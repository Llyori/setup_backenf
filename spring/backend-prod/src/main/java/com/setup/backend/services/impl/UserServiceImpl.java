package com.setup.backend.services.impl;

import java.io.IOException;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;
import java.util.Optional;
import java.util.Set;
import java.util.UUID;
import java.util.stream.Collectors;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.hazelcast.core.HazelcastInstance;
import com.hazelcast.map.IMap;
import com.setup.backend.beans.ActivationHash;
import com.setup.backend.beans.User;
import com.setup.backend.enums.Role;
import com.setup.backend.exceptions.KnownException;
import com.setup.backend.exceptions.UnknownException;
import com.setup.backend.models.PageResponse;
import com.setup.backend.models.UserDTO;
import com.setup.backend.records.CacheToken;
import com.setup.backend.records.ConfirmResetPasswordRequest;
import com.setup.backend.records.LockOrBanAccountRequest;
import com.setup.backend.records.UpdateUserPasswordRequest;
import com.setup.backend.repositories.ActivationHashRepository;
import com.setup.backend.repositories.UserRepository;
import com.setup.backend.services.EmailService;
import com.setup.backend.services.UserService;
import com.setup.backend.utils.ActivationHashGenerator;
import com.setup.backend.utils.Constants;

@Service
public class UserServiceImpl implements UserService {

    private UserRepository usersRepository;
    private PasswordEncoder passwordEncoder;
    private ActivationHashRepository activationHashRepository;
    private AuthenticationServiceImpl authenticationServiceImpl;
    private EmailService mailSender;
    private HazelcastInstance hazelcastInstance;

    public UserServiceImpl(UserRepository usersRepository, PasswordEncoder passwordEncoder,
            ActivationHashRepository activationHashRepository, EmailService mailSender,
            AuthenticationServiceImpl authenticationServiceImpl, HazelcastInstance hazelcastInstance) {
        this.usersRepository = usersRepository;
        this.passwordEncoder = passwordEncoder;
        this.activationHashRepository = activationHashRepository;
        this.mailSender = mailSender;
        this.authenticationServiceImpl = authenticationServiceImpl;
        this.hazelcastInstance = hazelcastInstance;
    }

    @Override
    public User create(UserDTO usr) throws KnownException {
        if (this.usersRepository.existsByEmail(usr.getEmail())) {
            throw new KnownException(Constants.EMAIL_ALREADY_USED_CODE, Constants.EMAIL_ALREADY_USED);
        }
        usr.setStatus(Constants.STATE_DEACTIVATED);
        usr.setPassword(passwordEncoder.encode(usr.getPassword()));
        usr.setCreatedOn(new Date());
        usr.setRoles(Arrays.asList(Role.USER));
        User user = User.toUser(usr);

        User newUser = null;
        if (user != null) {
            newUser = usersRepository.save(user);
        }

        // Génération du hash d'activation
        String activationHash = ActivationHashGenerator.generateActivationHash();

        // Calcul de la date d'expiration (par exemple, 24 heures après la création du
        // hash)
        LocalDateTime expirationDate = LocalDateTime.now().plusHours(24);

        // Création de l'entrée ActivationHash liée à l'utilisateur
        ActivationHash activationHashEntity = new ActivationHash();
        activationHashEntity.setHash(activationHash);
        activationHashEntity.setExpirationDate(expirationDate);
        activationHashEntity.setUser(newUser);
        activationHashRepository.save(activationHashEntity);

        // Envoi de l'email contenant le lien d'activation à l'utilisateur
        mailSender.sendActivationEmail(newUser, activationHash);

        return newUser;
    }

    @Override
    public UserDTO update(User usr) throws KnownException {
        User userFound = this.findById(usr.getId());
        if (userFound != null && userFound.getStatus() == Constants.STATE_ACTIVATED) {
            usr.setLastUpdateOn(new Date());
        } else if (userFound == null) {
            throw new KnownException(Constants.USER_NOT_FOUND_CODE, Constants.USER_NOT_FOUND);
        } else if (userFound.getStatus() == Constants.STATE_DELETED) {
            throw new KnownException(Constants.USER_ALREADY_DELETED_CODE, Constants.USER_ALREADY_DELETED);
        } else if (userFound.getStatus() == Constants.STATE_DEACTIVATED) {
            throw new KnownException(Constants.USER_ALREADY_DEACTIVATED_CODE,
                    Constants.USER_ALREADY_DEACTIVATED);
        }
        User saveUser = usersRepository.save(usr);
        return new UserDTO(saveUser);
    }

    @Override
    public List<User> getAllUser() {
        List<User> users = new ArrayList<>();
        usersRepository.findAll().forEach(users::add);
        return users;
    }

    @Override
    public User deleteUser(Long userId) throws KnownException {
        User userFound = this.findById(userId);
        if (userFound != null && (userFound.getStatus() == Constants.STATE_ACTIVATED
                || userFound.getStatus() == Constants.STATE_DEACTIVATED)) {
            userFound.setStatus(Constants.STATE_DELETED);
            userFound.setLastUpdateOn(new Date());
        } else if (userFound == null) {
            throw new KnownException(Constants.USER_NOT_FOUND_CODE, Constants.USER_NOT_FOUND);
        } else if (userFound.getStatus() == Constants.STATE_DELETED) {
            throw new KnownException(Constants.USER_ALREADY_DELETED_CODE, Constants.USER_ALREADY_DELETED);
        }
        return usersRepository.save(userFound);
    }

    @Override
    public User findByEmail(String userMail) {
        return usersRepository.findByEmail(userMail).orElse(null);

    }

    @Override
    public Set<String> getUserRolesList(Long userId) throws KnownException {
        User user = this.findById(userId);
        if (user == null)
            throw new KnownException(Constants.USER_NOT_FOUND_CODE, Constants.USER_NOT_FOUND);
        if (user.getRoles() == null)
            user.setRoles(List.of());
        return user.getRoles().stream().map(Role::toString).collect(Collectors.toSet());
    }

    @Override
    public UserDTO updateUserPassword(UpdateUserPasswordRequest updateUserPasswordRequest) throws KnownException {
        User userFound = this.findById(updateUserPasswordRequest.userId());
        if (userFound != null) {
            if (userFound.getStatus() == Constants.STATE_ACTIVATED) {
                if (passwordEncoder.matches(updateUserPasswordRequest.oldPassword(), userFound.getPassword())) {
                    userFound.setPassword(passwordEncoder.encode(updateUserPasswordRequest.newPassword()));
                    userFound.setLastUpdateOn(new Date());
                } else {
                    throw new KnownException(Constants.OLD_PASSWORD_NOT_MATCH_CODE, Constants.OLD_PASSWORD_NOT_MATCH);
                }
            } else if (userFound.getStatus() == Constants.STATE_DELETED) {
                throw new KnownException(Constants.USER_ALREADY_DELETED_CODE, Constants.USER_ALREADY_DELETED);
            } else if (userFound.getStatus() == Constants.STATE_DEACTIVATED) {
                throw new KnownException(Constants.USER_ALREADY_DEACTIVATED_CODE, Constants.USER_ALREADY_DEACTIVATED);
            }
            usersRepository.save(userFound);
            return new UserDTO(userFound);
        } else {
            throw new KnownException(Constants.USER_NOT_FOUND_CODE, Constants.USER_NOT_FOUND);
        }
    }

    @Override
    public User findById(Long id) {
        return this.usersRepository.findByIdOrNull(id);

    }

    @Override
    public Boolean updateUserStatus(User user) throws KnownException {
        Boolean response = false;
        User userFound = this.findById(user.getId());
        if (userFound != null) {
            usersRepository.updateUserStatus(user.getId(), user.getStatus());
            response = true;

        } else {
            throw new KnownException(Constants.USER_NOT_FOUND_CODE, Constants.USER_NOT_FOUND);
        }

        return response;
    }

    @Override
    public UserDTO lockUserAccount(LockOrBanAccountRequest lockAccountRequest) throws KnownException, IOException {
        User principal = authenticationServiceImpl.getConnectedUser();

        boolean isAdmin = false;

        if (principal != null && principal.getRoles() != null && !principal.getRoles().isEmpty()) {
            isAdmin = principal.getRoles().stream()
                    .anyMatch(role -> role.equals(Role.ADMIN));
        }
        if (isAdmin) {
            User user = this.findById(lockAccountRequest.userId());
            if (user == null) {
                throw new KnownException(Constants.USER_NOT_FOUND_CODE, Constants.USER_NOT_FOUND);
            } else {
                if (user.getStatus() == Constants.STATE_LOCKED) {
                    throw new KnownException(Constants.USER_ACCOUNT_ALREADY_LOCKED_CODE,
                            Constants.USER_ACCOUNT_ALREADY_LOCKED);
                }

                user.setStatus(Constants.STATE_LOCKED);
                user.setLastUpdateOn(new Date());
                usersRepository.save(user);

                // Envoi de l'email contenant la raison du blocage de compte.
                mailSender.sendLockedEmail(user.getEmail(), user.getFirstName(),
                        lockAccountRequest.comment());
                return new UserDTO(user);

            }

        } else {
            throw new KnownException(Constants.USER_NOT_AUTHORIZED_CODE, Constants.USER_NOT_AUTHORIZED);
        }
    }

    @Override
    public CacheToken generateResetPasswordLink(String userEmail) throws KnownException, UnknownException {
        if (usersRepository.findByEmail(userEmail).isPresent()) {
            Optional<User> userFound = usersRepository.findByEmail(userEmail);
            if (userFound.isPresent() && userFound.get().getStatus() == Constants.STATE_ACTIVATED) {

                // mise en cache de l'id du user.
                String token = UUID.randomUUID().toString();
                IMap<String, Long> passwordResetTokens = hazelcastInstance.getMap("resetPasswordToken");
                passwordResetTokens.put(token, userFound.get().getId());

                // envoie du lien de reset password par mail.
                mailSender.sendMailToResetPassword(userFound.get().getEmail(),
                        userFound.get().getLastName() + " " + userFound.get().getFirstName(), token);
                return new CacheToken(token);
            }
            getErrorByStatus(userFound);

        } else {
            throw new KnownException(Constants.INVALID_USER_EMAIL_CODE, Constants.INVALID_USER_EMAIL);
        }
        return null;
    }

    private void getErrorByStatus(Optional<User> userFound) throws KnownException, UnknownException {
        if (userFound.isPresent()) {

            if (userFound.get().getStatus() == Constants.STATE_LOCKED) {
                throw new KnownException(Constants.USER_ACCOUNT_ALREADY_LOCKED_CODE,
                        Constants.USER_ACCOUNT_ALREADY_LOCKED);
            }

            if (userFound.get().getStatus() == Constants.STATE_DEACTIVATED) {
                throw new KnownException(Constants.USER_ALREADY_DEACTIVATED_CODE,
                        Constants.USER_ALREADY_DEACTIVATED);
            }
            if (userFound.get().getStatus() == Constants.STATE_DELETED) {
                throw new KnownException(Constants.USER_ALREADY_DELETED_CODE, Constants.USER_ALREADY_DELETED);
            } else {
                throw new UnknownException("Unknown error");
            }
        } else {
            throw new KnownException(Constants.INVALID_USER_EMAIL_CODE, Constants.INVALID_USER_EMAIL);
        }
    }

    @Override
    public UserDTO confirmResetPassword(ConfirmResetPasswordRequest request) throws KnownException {
        IMap<String, Long> passwordResetTokens = hazelcastInstance.getMap("resetPasswordToken");
        if (passwordResetTokens != null) {
            Long userId = passwordResetTokens.get(request.token());
            if (userId != null) {
                Optional<User> userToSave = usersRepository.findById(userId);
                if (userToSave.isPresent()) {
                    userToSave.get().setPassword(passwordEncoder.encode(request.newPassword()));
                    usersRepository.save(userToSave.get());
                    passwordResetTokens.remove(request.token());
                    return new UserDTO(userToSave.get());
                } else {
                    throw new KnownException(Constants.USER_NOT_FOUND_CODE, Constants.USER_NOT_FOUND);
                }

            } else {
                throw new KnownException(Constants.RESET_TOKEN_EXPIRED_CODE, Constants.RESET_TOKEN_EXPIRED);
            }
        } else {
            throw new KnownException(Constants.EMPTY_CACHE_CODE, Constants.EMPTY_CACHE);
        }
    }

    @Override
    public UserDTO getUserById(Long userId) throws KnownException {
        User user = this.findById(userId);
        if (user != null) {
            return new UserDTO(user);
        }
        throw new KnownException(Constants.USER_NOT_FOUND_CODE, Constants.USER_NOT_FOUND);
    }

    @Override
    public UserDTO updateUserProfil(User usr) throws KnownException {
        User userFound = usersRepository.findByIdOrNull(usr.getId());
        if (userFound != null && userFound.getStatus() == Constants.STATE_ACTIVATED) {
            usr.setLastUpdateOn(new Date());
        } else if (userFound == null) {
            throw new KnownException(Constants.USER_NOT_FOUND_CODE, Constants.USER_NOT_FOUND);
        } else if (userFound.getStatus() == Constants.STATE_DELETED) {
            throw new KnownException(Constants.USER_ALREADY_DELETED_CODE, Constants.USER_ALREADY_DELETED);
        } else if (userFound.getStatus() == Constants.STATE_DEACTIVATED) {
            throw new KnownException(Constants.USER_ALREADY_DEACTIVATED_CODE,
                    Constants.USER_ALREADY_DEACTIVATED);
        }
        userFound.setFirstName(usr.getFirstName());
        userFound.setLastName(usr.getLastName());
        userFound.setPhone(usr.getPhone());
        userFound.setEmail(usr.getEmail());
        User saveUser = usersRepository.save(userFound);
        return new UserDTO(saveUser);
    }

    @Override
    public PageResponse<UserDTO> getPaginatedListOfUser(int page, int size, String criteria) {
        Pageable pageable = PageRequest.of(page, size, Sort.by(Direction.DESC, "createdOn"));

        if (criteria == null || criteria.trim().isEmpty()) {
            Page<User> userPage = usersRepository.findAll(pageable);
            List<UserDTO> dtos = userPage.stream().map(UserDTO::new).toList();
            return new PageResponse<>(
                    dtos,
                    pageable.getPageNumber(),
                    pageable.getPageSize(),
                    userPage.getTotalElements());
        }
        Page<User> userPage = usersRepository.getUserByFilterCriteria(pageable,
                criteria);
        List<UserDTO> filteredDto = userPage.stream().map(UserDTO::new).toList();
        return new PageResponse<>(
                filteredDto,
                pageable.getPageNumber(),
                pageable.getPageSize(),
                userPage.getTotalElements());

    }

}
