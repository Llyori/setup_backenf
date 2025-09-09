package com.setup.backend.services;

import java.time.LocalDateTime;
import java.util.Date;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.Mockito;
import org.mockito.junit.jupiter.MockitoExtension;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.crypto.password.PasswordEncoder;

import com.setup.backend.beans.ActivationHash;
import com.setup.backend.beans.Token;
import com.setup.backend.beans.User;
import com.setup.backend.configs.security.JwtService;
import com.setup.backend.exceptions.KnownException;
import com.setup.backend.records.AuthenticationResponse;
import com.setup.backend.records.BuildedToken;
import com.setup.backend.repositories.ActivationHashRepository;
import com.setup.backend.repositories.TokenRepository;
import com.setup.backend.repositories.UserRepository;
import com.setup.backend.services.impl.AuthenticationServiceImpl;
import com.setup.backend.utils.Constants;

@ExtendWith(MockitoExtension.class)
class AuthenticationServiceImplTests {

    @InjectMocks
    private AuthenticationServiceImpl authenticationService;

    @Mock
    private UserRepository userRepository;

    @Mock
    private TokenRepository tokenRepository;

    @Mock
    private ActivationHashRepository activationHashRepository;

    @Mock
    private PasswordEncoder passwordEncoder;

    @Mock
    private JwtService jwtService;

    @Mock
    private AuthenticationManager authenticationManager;

    @Test
    void testActivateAccount_whenActivationHashNotFound_thenThrowAKnownException() {
        String activationHash = "sample-hash";

        Mockito.when(activationHashRepository.findByHash(activationHash)).thenReturn(null);

        KnownException exception = Assertions.assertThrows(KnownException.class,
                () -> authenticationService.activateAccount(activationHash));

        Assertions.assertNotNull(exception);
        Assertions.assertEquals(Constants.ACCOUNT_ACTIVATION_LINK_NOT_FOUND_CODE, exception.getCode());
        Assertions.assertEquals(Constants.ACCOUNT_ACTIVATION_LINK_NOT_FOUND, exception.getMessage());

        Mockito.verify(activationHashRepository, Mockito.times(1)).findByHash(activationHash);
    }

    @Test
    void testActivateAccount_whenActivationHashIsExpiredAndUserNotNull_thenThrowAKnownException() {
        String activationHash = "sample-hash";
        ActivationHash activationHashFound = new ActivationHash(1L, activationHash, LocalDateTime.now(), new User());

        Mockito.when(activationHashRepository.findByHash(activationHash)).thenReturn(activationHashFound);

        KnownException exception = Assertions.assertThrows(KnownException.class,
                () -> authenticationService.activateAccount(activationHash));

        Assertions.assertNotNull(exception);
        Assertions.assertEquals(Constants.ACCOUNT_ACTIVATION_LINK_EXPIRED_CODE, exception.getCode());
        Assertions.assertEquals(Constants.ACCOUNT_ACTIVATION_LINK_EXPIRED, exception.getMessage());

        Mockito.verify(activationHashRepository, Mockito.times(1)).findByHash(activationHash);
    }

    @Test
    void testActivateAccount_whenActivationHashIsNotExpired_thenReturnAnAuthenticationResponse()
            throws KnownException {
        String activationHash = "sample-hash";
        ActivationHash activationHashFound = new ActivationHash(1L, activationHash, LocalDateTime.now().plusDays(1),
                new User());
        BuildedToken buildedToken = new BuildedToken("sample-access-token", new Date());

        Mockito.when(activationHashRepository.findByHash(activationHash)).thenReturn(activationHashFound);
        Mockito.when(userRepository.save(activationHashFound.getUser())).thenReturn(activationHashFound.getUser());
        Mockito.doNothing().when(activationHashRepository).delete(activationHashFound);
        Mockito.when(jwtService.generateToken(activationHashFound.getUser())).thenReturn(buildedToken);
        Mockito.when(jwtService.generateRefreshToken(activationHashFound.getUser())).thenReturn("sample-refresh-token");
        Mockito.when(tokenRepository.save(Mockito.any(Token.class))).thenReturn(new Token());

        AuthenticationResponse result = authenticationService.activateAccount(activationHash);

        Assertions.assertNotNull(result);
        Assertions.assertNotNull(result.accessToken());
        Assertions.assertNotNull(result.refreshToken());
        Assertions.assertNotNull(result.user());

        Mockito.verify(activationHashRepository, Mockito.times(1)).findByHash(activationHash);
        Mockito.verify(userRepository, Mockito.times(1)).save(activationHashFound.getUser());
        Mockito.verify(activationHashRepository, Mockito.times(1)).delete(activationHashFound);
        Mockito.verify(jwtService, Mockito.times(1)).generateToken(activationHashFound.getUser());
        Mockito.verify(jwtService, Mockito.times(1)).generateRefreshToken(activationHashFound.getUser());
        Mockito.verify(tokenRepository, Mockito.times(1)).save(Mockito.any(Token.class));
    }

    @Test
    void testgenerateNewActivationHash_whenActivationHashNotFound_thenThrowAKnownException() {
        String activationHash = "sample-hash";

        Mockito.when(activationHashRepository.findByHash(activationHash)).thenReturn(null);

        KnownException exception = Assertions.assertThrows(KnownException.class,
                () -> authenticationService.generateNewActivationHash(activationHash));

        Assertions.assertNotNull(exception);
        Assertions.assertEquals(Constants.ACCOUNT_ACTIVATION_LINK_NOT_FOUND_CODE, exception.getCode());
        Assertions.assertEquals(Constants.ACCOUNT_ACTIVATION_LINK_NOT_FOUND, exception.getMessage());

        Mockito.verify(activationHashRepository, Mockito.times(1)).findByHash(activationHash);
    }

}
