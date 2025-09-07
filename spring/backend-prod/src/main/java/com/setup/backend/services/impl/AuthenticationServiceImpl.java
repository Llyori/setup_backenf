package com.setup.backend.services.impl;

import java.io.IOException;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpHeaders;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.setup.backend.beans.ActivationHash;
import com.setup.backend.beans.Token;
import com.setup.backend.beans.User;
import com.setup.backend.configs.security.JwtService;
import com.setup.backend.enums.TokenType;
import com.setup.backend.exceptions.KnownException;
import com.setup.backend.models.ResponseDTO;
import com.setup.backend.records.AuthenticationRequest;
import com.setup.backend.records.AuthenticationResponse;
import com.setup.backend.records.BuildedToken;
import com.setup.backend.records.RegisterRequest;
import com.setup.backend.repositories.ActivationHashRepository;
import com.setup.backend.repositories.TokenRepository;
import com.setup.backend.repositories.UserRepository;
import com.setup.backend.services.AuthenticationService;
import com.setup.backend.services.EmailService;
import com.setup.backend.utils.ActivationHashGenerator;
import com.setup.backend.utils.Constants;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class AuthenticationServiceImpl implements AuthenticationService {

    @Value("${app.frontend_base_url}")
    private String frontendBaseUrl;

    @Value("${app.account.profile_base_url}")
    private String usersProfileBaseUrl;

    private final UserRepository userRepository;
    private final TokenRepository tokenRespository;
    private final ActivationHashRepository activationHashRepository;
    private final PasswordEncoder passwordEncoder;
    private final JwtService jwtService;
    private final AuthenticationManager authenticationManager;
    private final EmailService mailService;

    @Override
    public AuthenticationResponse register(RegisterRequest registerRequest) throws KnownException {
        User optionalUser = userRepository.findByEmail(registerRequest.email())
                .orElse(null);

        if (optionalUser != null) {
            throw new KnownException(Constants.EMAIL_ALREADY_USED_CODE, Constants.EMAIL_ALREADY_USED);

        }

        User user = User
                .builder()
                .firstName(registerRequest.firstName())
                .lastName(registerRequest.lastName())
                .email(registerRequest.email())
                .phone(registerRequest.phone())
                .password(passwordEncoder.encode(registerRequest.password()))
                .roles(registerRequest.roles())
                .build();
        user.setRoles(registerRequest.roles());
        User savedUser = userRepository.save(user);

        // Tokens generation
        BuildedToken buildedToken = jwtService.generateToken(savedUser);
        String jwtToken = buildedToken.token();
        Date tokenExpiredAt = buildedToken.expiredAt();
        String refreshToken = jwtService.generateRefreshToken(savedUser);
        savedUser.setTokens(new ArrayList<>());

        saveUserToken(savedUser, jwtToken);

        return new AuthenticationResponse(jwtToken, refreshToken, User.fromUser(savedUser), tokenExpiredAt);

    }

    private void saveUserToken(User user, String jwtToken) {
        Token token = Token
                .builder()
                .expired(false)
                .revoked(false)
                .user(user)
                .tk(jwtToken)
                .tokenType(TokenType.BEARER)
                .build();

        if (token != null)
            tokenRespository.save(token);
    }

    @Override
    public AuthenticationResponse authenticate(AuthenticationRequest authenticationRequest) throws KnownException {
        authenticationManager.authenticate(
                new UsernamePasswordAuthenticationToken(
                        authenticationRequest.email(),
                        authenticationRequest.password()));

        User user = userRepository.findByEmail(authenticationRequest.email())
                .orElseThrow(() -> new IllegalStateException(
                        "User with email [%s] not found".formatted(authenticationRequest.email())));

        if (user.getStatus() == Constants.STATE_DEACTIVATED)
            throw new KnownException(Constants.USER_ALREADY_DELETED_CODE, Constants.USER_ALREADY_DELETED);
        if (user.getStatus() == Constants.STATE_LOCKED)
            throw new KnownException(Constants.USER_ACCOUNT_ALREADY_LOCKED_CODE,
                    Constants.USER_ACCOUNT_ALREADY_LOCKED);

        authenticationManager.authenticate(
                new UsernamePasswordAuthenticationToken(
                        authenticationRequest.email(),
                        authenticationRequest.password()));

        // Tokens generation
        BuildedToken buildedToken = jwtService.generateToken(user);
        String jwtToken = buildedToken.token();
        Date tokenExpiredAt = buildedToken.expiredAt();
        String refreshToken = jwtService.generateRefreshToken(user);

        revokeAllUserTokens(user);

        saveUserToken(user, jwtToken);
        user.setTokens(new ArrayList<>());

        return new AuthenticationResponse(jwtToken, refreshToken, User.fromUser(user), tokenExpiredAt);
    }

    @Override
    public void refreshToken(
            HttpServletRequest request,
            HttpServletResponse response) throws IOException {
        final String authHeader = request.getHeader(HttpHeaders.AUTHORIZATION);
        final String refreshToken;
        final String userEmail;

        if (authHeader == null || !authHeader.startsWith("Bearer "))
            return;

        refreshToken = authHeader.substring(7);
        userEmail = jwtService.extractUserName(refreshToken);

        if (userEmail != null) {
            User user = userRepository.findByEmail(userEmail)
                    .orElseThrow(() -> new IllegalStateException("User not found"));

            if (jwtService.isTokenValid(refreshToken, user)) {
                BuildedToken buildedToken = jwtService.generateToken(user);
                String accessToken = buildedToken.token();
                Date tokenExpiredAt = buildedToken.expiredAt();

                revokeAllUserTokens(user);
                saveUserToken(user, accessToken);
                user.setTokens(new ArrayList<>());

                AuthenticationResponse authenticationResponse = new AuthenticationResponse(accessToken, refreshToken,
                        User.fromUser(user), tokenExpiredAt);

                new ObjectMapper().writeValue(response.getOutputStream(), authenticationResponse);
            }
        }
    }

    private void revokeAllUserTokens(User user) {
        List<Token> validUserTokens = tokenRespository.findAllValidTokensByUserId(user.getId());

        if (validUserTokens.isEmpty())
            return;

        validUserTokens.forEach(token -> {
            token.setExpired(true);
            token.setRevoked(true);
        });

        tokenRespository.saveAll(validUserTokens);
    }

    @Override
    public AuthenticationResponse activateAccount(String activationHash) throws KnownException {
        // Recherche de l'entrée ActivationHash correspondante
        ActivationHash activationHashEntity = activationHashRepository.findByHash(activationHash);
        if (activationHashEntity == null) {
            throw new KnownException(Constants.ACCOUNT_ACTIVATION_LINK_NOT_FOUND_CODE,
                    Constants.ACCOUNT_ACTIVATION_LINK_NOT_FOUND);
        }
        if (activationHashEntity.getExpirationDate().isBefore(LocalDateTime.now())) {
            throw new KnownException(Constants.ACCOUNT_ACTIVATION_LINK_EXPIRED_CODE,
                    Constants.ACCOUNT_ACTIVATION_LINK_EXPIRED);
        }
        // Activation du compte de l'utilisateur
        User user = activationHashEntity.getUser();
        user.setStatus(Constants.STATE_ACTIVATED);
        var savedUser = userRepository.save(user);
        activationHashRepository.delete(activationHashEntity);

        // Tokens generation
        BuildedToken buildedToken = jwtService.generateToken(savedUser);
        String jwtToken = buildedToken.token();
        Date tokenExpiredAt = buildedToken.expiredAt();
        String refreshToken = jwtService.generateRefreshToken(savedUser);

        saveUserToken(savedUser, jwtToken);
        savedUser.setTokens(new ArrayList<>());

        return new AuthenticationResponse(jwtToken, refreshToken, User.fromUser(savedUser), tokenExpiredAt);
    }

    @Override
    public Authentication getAuthentication() {
        return SecurityContextHolder.getContext().getAuthentication();

    }

    @Override
    public User getConnectedUser() {
        User principal = (User) this.getAuthentication().getPrincipal();
        Optional<User> connectedUser = Optional.empty();
        Long princicalId = (principal.getId() != null) ? principal.getId() : null;
        if (princicalId != null)
            connectedUser = userRepository.findById(princicalId);
        return (connectedUser.isPresent()) ? connectedUser.get() : null;
    }

    @Override
    public ResponseDTO generateNewActivationHash(String holdHash) throws KnownException {
        ActivationHash activationHash = activationHashRepository.findByHash(holdHash);
        if (activationHash != null) {
            // Génération du hash d'activation
            String activationNewHash = ActivationHashGenerator.generateActivationHash();

            // Calcul de la date d'expiration (par exemple, 24 heures après la création du
            // hash)
            LocalDateTime expirationDate = LocalDateTime.now().plusHours(24);

            // Envoi de l'email contenant le lien d'activation à l'utilisateur
            mailService.sendActivationEmail(activationHash.getUser(), activationNewHash);

            // Mise à jour de l'entrée ActivationHash liée à l'utilisateur
            activationHash.setHash(activationNewHash);
            activationHash.setExpirationDate(expirationDate);
            activationHashRepository.save(activationHash);
            return new ResponseDTO("200", "Nouveau genéreé avec succès !");
        } else {
            throw new KnownException(Constants.ACCOUNT_ACTIVATION_LINK_NOT_FOUND_CODE,
                    Constants.ACCOUNT_ACTIVATION_LINK_NOT_FOUND);
        }
    }

}
