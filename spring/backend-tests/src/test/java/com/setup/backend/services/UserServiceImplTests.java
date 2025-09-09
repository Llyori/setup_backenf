package com.setup.backend.services;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;
import static org.junit.jupiter.api.Assertions.assertThrows;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.ArgumentMatchers.anyLong;
import static org.mockito.Mockito.doNothing;
import static org.mockito.Mockito.never;
import static org.mockito.Mockito.times;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;

import java.io.IOException;
import java.util.Arrays;
import java.util.List;
import java.util.Optional;
import java.util.Set;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.ArgumentCaptor;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.Mockito;
import org.mockito.junit.jupiter.MockitoExtension;
import org.springframework.cache.CacheManager;
import org.springframework.security.crypto.password.PasswordEncoder;

import com.hazelcast.core.HazelcastInstance;
import com.hazelcast.map.IMap;
import com.setup.backend.beans.User;
import com.setup.backend.enums.Role;
import com.setup.backend.exceptions.KnownException;
import com.setup.backend.exceptions.UnknownException;
import com.setup.backend.models.UserDTO;
import com.setup.backend.records.CacheToken;
import com.setup.backend.records.ConfirmResetPasswordRequest;
import com.setup.backend.records.LockOrBanAccountRequest;
import com.setup.backend.records.UpdateUserPasswordRequest;
import com.setup.backend.repositories.UserRepository;
import com.setup.backend.services.impl.AuthenticationServiceImpl;
import com.setup.backend.services.impl.UserServiceImpl;
import com.setup.backend.utils.Constants;
import com.setup.backend.utils.TestsUtils;

@ExtendWith(MockitoExtension.class)
class UserServiceImplTests {

    @InjectMocks
    private UserServiceImpl userService;

    @Mock
    private AuthenticationServiceImpl authenticationServiceImpl;

    @Mock
    private UserRepository userRepository;

    @Mock
    private EmailService mailSenderMock;

    @Mock
    private PasswordEncoder passwordEncoder;

    @Mock
    private CacheManager cacheManager;

    @Mock
    private HazelcastInstance hazelcastInstance;

    private User principal;

    @BeforeEach
    void setup() {
        Long userId = 1L;
        principal = TestsUtils.getUser(userId, "cherif12@", "ibrahim", "cherif",
                "ibrahim@dimsoft.eu", "admin@test",
                Arrays.asList(Role.USER, Role.ENTERPRISE, Role.ENTERPRISE, Role.ASSOCIATION));

    }

    // dans le meilleur des cas
    @Test
    void testUpdateUserStatus_Success() throws KnownException {

        User user = User.builder().firstName("Ibrahim").lastName("Cherif").email("cherif@dimsoft.eu")
                .phone("+237690807060").password("ibr@!/_12").roles(Arrays.asList(Role.USER)).build();

        user.setId(1L);
        user.setStatus(Constants.STATE_ACTIVATED);

        when(userRepository.findByIdOrNull(user.getId())).thenReturn(user);
        doNothing().when(userRepository).updateUserStatus(user.getId(),
                user.getStatus());

        Boolean response = userService.updateUserStatus(user);

        assertEquals(true, response);
        verify(userRepository).updateUserStatus(user.getId(), user.getStatus());
    }

    @Test
    void testGetUserRolesList_whenUserIsFound_thenReturnHisRolesList() throws KnownException {
        Long userId = 1l;
        User userFound = User.builder().roles(List.of(Role.ADMIN, Role.USER, Role.USER)).build();

        when(userRepository.findByIdOrNull(userId)).thenReturn(userFound);

        Set<String> roleSet = userService.getUserRolesList(userId);

        Assertions.assertNotNull(roleSet);
        Assertions.assertTrue(roleSet.contains(Role.ADMIN.toString()));
        Assertions.assertTrue(roleSet.contains(Role.USER.toString()));
        Assertions.assertEquals(2, roleSet.size());
        verify(userRepository, times(1)).findByIdOrNull(1L);
    }

    @Test
    void testGetUserRolesList_whenUserIsNotFound_thenReturnKnownException() {
        Long userId = 1l;

        when(userRepository.findByIdOrNull(userId)).thenReturn(null);

        KnownException exception = Assertions.assertThrows(KnownException.class,
                () -> userService.getUserRolesList(userId));

        Assertions.assertNotNull(exception);
        Assertions.assertEquals(Constants.USER_NOT_FOUND_CODE, exception.getCode());
        Assertions.assertEquals(Constants.USER_NOT_FOUND, exception.getMessage());
        verify(userRepository, times(1)).findByIdOrNull(1L);
    }

    @Test
    void testLockUserAccount_whenTheConnectedUserIsNotTheAdmin_thenAnKnownExceptionIsRaised() {

        LockOrBanAccountRequest lockAccountRequest = new LockOrBanAccountRequest(1L,
                "Utilisateur bloquÃ© pour abus de lolo_juice");

        // simulation de l'authentification.
        when(authenticationServiceImpl.getConnectedUser()).thenReturn(principal);

        KnownException exception = assertThrows(KnownException.class,
                () -> userService.lockUserAccount(lockAccountRequest));
        assertEquals(Constants.USER_NOT_AUTHORIZED, exception.getMessage());
        assertEquals(Constants.USER_NOT_AUTHORIZED_CODE, exception.getCode());

        verify(authenticationServiceImpl, times(1)).getConnectedUser();
    }

    @Test
    void testLockUserAccount_WhenTheUserDoesNotExists_ThenKnownExceptionIsRaised() {
        LockOrBanAccountRequest lockAccountRequest = new LockOrBanAccountRequest(1L,
                "Utilisateur bloquÃ© pour abus de lolo_juice");
        Long userId = 1L;
        User admin = TestsUtils.getUser(userId, "cherif12@", "ibrahim", "cherif",
                "ibrahim@dimsoft.eu", "admin@test",
                Arrays.asList(Role.ADMIN));

        // simulation repository
        when(userRepository.findByIdOrNull(Mockito.anyLong())).thenReturn(null);
        when(authenticationServiceImpl.getConnectedUser()).thenReturn(admin);

        // appel de la mÃÂ©thode du service
        KnownException exception = assertThrows(KnownException.class,
                () -> userService.lockUserAccount(lockAccountRequest));
        assertEquals(Constants.USER_NOT_FOUND, exception.getMessage());
        assertEquals(Constants.USER_NOT_FOUND_CODE, exception.getCode());

        verify(userRepository, times(1)).findByIdOrNull(1L);
    }

    @Test
    void testLockUserAccount_WhenTheUserIsAlreadyLocked_ThenKnownExceptionIsRaised() {
        LockOrBanAccountRequest lockAccountRequest = new LockOrBanAccountRequest(1L,
                "Utilisateur bloquÃ© pour abus de lolo_juice");
        Long userId = 1L;
        User superAdmin = TestsUtils.getUser(userId, "cherif12@", "ibrahim", "cherif",
                "ibrahim@dimsoft.eu", "admin@test",
                Arrays.asList(Role.ADMIN));

        User user = new User();
        user.setStatus(Constants.STATE_LOCKED);
        // simulation repository
        when(userRepository.findByIdOrNull(Mockito.anyLong())).thenReturn(user);
        when(authenticationServiceImpl.getConnectedUser()).thenReturn(superAdmin);

        // appel de la mÃÂ©thode du service
        KnownException exception = assertThrows(KnownException.class,
                () -> userService.lockUserAccount(lockAccountRequest));
        assertEquals(Constants.USER_ACCOUNT_ALREADY_LOCKED, exception.getMessage());
        assertEquals(Constants.USER_ACCOUNT_ALREADY_LOCKED_CODE, exception.getCode());

        verify(userRepository, times(1)).findByIdOrNull(1L);
    }

    @Test
    void testLockUserAccount_WhenTheUserExistsAndIsActive_ThenAccountIsSuccessfullyLocked()
            throws KnownException, IOException {
        LockOrBanAccountRequest lockAccountRequest = new LockOrBanAccountRequest(1L,
                "Utilisateur pour consommation abusive de kior.");

        // authenticated user.
        Long userId = 1L;
        User admin = TestsUtils.getUser(userId, "cherif12@", "ibrahim", "cherif",
                "ibrahim@dimsoft.eu", "admin@test",
                Arrays.asList(Role.ADMIN));

        // Locked user
        User user = User.builder().firstName("Ibrahim").lastName("Cherif").email("cherif@dimsoft.eu")
                .phone("+237690807060").password("ibr@!/_12").roles(Arrays.asList(Role.USER)).build();

        user.setId(1L);
        user.setStatus(Constants.STATE_LOCKED);

        User userFound = User.builder().firstName("Ibrahim").lastName("Cherif").email("cherif@dimsoft.eu")
                .phone("+237690807060").password("ibr@!/_12").roles(Arrays.asList(Role.USER)).build();
        userFound.setStatus(Constants.STATE_ACTIVATED);

        // Simulation
        when(userRepository.findByIdOrNull(Mockito.anyLong())).thenReturn(userFound);
        when(userRepository.save(userFound)).thenReturn(user);
        when(authenticationServiceImpl.getConnectedUser()).thenReturn(admin);

        UserDTO lockedUser = userService.lockUserAccount(lockAccountRequest);

        Assertions.assertEquals(Constants.STATE_LOCKED, lockedUser.getStatus());

        verify(userRepository, times(1)).findByIdOrNull(1L);
        verify(userRepository, times(1)).save(userFound);
    }

    @Test
    void testUpdateUser_whenIdIsValid_thenUserIsUpdatedSuccessfully() throws KnownException {
        User user = User.builder().firstName("Ibrahim").lastName("Cherif").email("cherif@dimsoft.eu")
                .phone("+237690807060").password("ibr@!/_12").roles(Arrays.asList(Role.USER)).build();

        user.setId(1L);
        user.setStatus(Constants.STATE_ACTIVATED);

        // Simulation du comportement du repository.
        when(userRepository.findByIdOrNull(user.getId())).thenReturn(user);
        when(userRepository.save(user)).thenReturn(user);

        // Appeler la mÃ©thode update du service
        UserDTO updatedUser = userService.update(user);

        Assertions.assertNotNull(updatedUser);
        Assertions.assertEquals(1, updatedUser.getId());
        Assertions.assertEquals("cherif@dimsoft.eu", updatedUser.getEmail());
        Assertions.assertEquals(Constants.STATE_ACTIVATED, updatedUser.getStatus());

        verify(userRepository, times(1)).findByIdOrNull(1L);
        verify(userRepository, times(1)).save(user);

    }

    @Test
    void testUpdateUser_whenIdIsNull_thenUserIsNotUpdated() {
        // Cration d'un objet user sans ID.
        User user = User.builder().firstName("Ibrahim").lastName("Cherif").email("cherif@dimsoft.eu")
                .phone("+237690807060").password("ibr@!/_12").roles(Arrays.asList(Role.USER)).build();
        user.setStatus(Constants.STATE_ACTIVATED);

        KnownException exception = assertThrows(KnownException.class, () -> userService.update(user));
        assertEquals(Constants.USER_NOT_FOUND, exception.getMessage());
        assertEquals(Constants.USER_NOT_FOUND_CODE, exception.getCode());

        verify(userRepository, never()).findByIdOrNull(anyLong());
        verify(userRepository, never()).save(user);
    }

    @Test
    void testUpdateUserPassword_WhenTheUserDoesNotExists_ThenAnKnownExceptionIsRaised() {

        UpdateUserPasswordRequest updateRequest = new UpdateUserPasswordRequest(1L, "password", "pass12@#1");

        // simulation
        Mockito.when(userRepository.findByIdOrNull(updateRequest.userId())).thenReturn(null);

        // appel du service
        KnownException exception = assertThrows(KnownException.class,
                () -> userService.updateUserPassword(updateRequest));
        assertEquals(Constants.USER_NOT_FOUND, exception.getMessage());
        assertEquals(Constants.USER_NOT_FOUND_CODE, exception.getCode());

        // vÃ©rifions si la mÃ©thode a Ã©tÃ© appelÃ©e au moins une fois
        verify(userRepository, times(1)).findByIdOrNull(1L);
    }

    @Test
    void testUpdateUserPassword_WhenTheUserIsNotActive_ThenAnKnownExceptionIsRaised() {

        UpdateUserPasswordRequest updateRequest = new UpdateUserPasswordRequest(1L, "password", "pass12@#1");
        User user = new User(1L);
        user.setStatus(Constants.STATE_DEACTIVATED);

        // simulation
        Mockito.when(userRepository.findByIdOrNull(any(Long.class))).thenReturn(user);

        // appel du service
        KnownException exception = assertThrows(KnownException.class,
                () -> userService.updateUserPassword(updateRequest));
        assertEquals(Constants.USER_ALREADY_DEACTIVATED, exception.getMessage());
        assertEquals(Constants.USER_ALREADY_DEACTIVATED_CODE, exception.getCode());

        // vÃ©rifions si la mÃ©thode a Ã©tÃ© appelÃ©e au moins une fois
        verify(userRepository, times(1)).findByIdOrNull(1L);
    }

    @Test
    void testUpdateUserPassword_WhenTheUserIsDeleted_ThenAnKnownExceptionIsRaised() {

        UpdateUserPasswordRequest updateRequest = new UpdateUserPasswordRequest(1L, "password", "pass12@#1");
        User user = new User(1L);
        user.setStatus(Constants.STATE_DELETED);

        // simulation
        Mockito.when(userRepository.findByIdOrNull(any(Long.class))).thenReturn(user);

        // appel du service
        KnownException exception = assertThrows(KnownException.class,
                () -> userService.updateUserPassword(updateRequest));
        assertEquals(Constants.USER_ALREADY_DELETED, exception.getMessage());
        assertEquals(Constants.USER_ALREADY_DELETED_CODE, exception.getCode());

        // vÃ©rifions si la mÃ©thode a Ã©tÃ© appelÃ©e au moins une fois
        verify(userRepository, times(1)).findByIdOrNull(1L);
    }

    @Test
    void testUpdateUserPassword_WhenTheOldPasswordIsWrong_ThenAnGenralExceptionIsRaised() {

        UpdateUserPasswordRequest updateRequest = new UpdateUserPasswordRequest(1L, "password", "pass12@#1");
        User user = new User(1L);
        user.setPassword(passwordEncoder.encode("hyvana@_/90"));
        user.setStatus(Constants.STATE_ACTIVATED);

        // simulation
        Mockito.when(userRepository.findByIdOrNull(any(Long.class))).thenReturn(user);
        // Mockito.when(passwordEncoder.encode())

        // appel du service
        KnownException exception = assertThrows(KnownException.class,
                () -> userService.updateUserPassword(updateRequest));
        assertEquals(Constants.OLD_PASSWORD_NOT_MATCH, exception.getMessage());
        assertEquals(Constants.OLD_PASSWORD_NOT_MATCH_CODE, exception.getCode());

        // vÃ©rifions si la mÃ©thode a Ã©tÃ© appelÃ©e au moins une fois
        verify(userRepository, times(1)).findByIdOrNull(1L);
    }

    @Test
    void testUpdateUserPassword_WhenAllInformationsAreCorrect_ThenUserPasswordIsCorrectlyUpdated()
            throws KnownException {

        UpdateUserPasswordRequest updateRequest = new UpdateUserPasswordRequest(1L, "password", "pass12@#1");
        User user = new User(1L);
        user.setPassword("password");
        user.setStatus(Constants.STATE_ACTIVATED);

        User newUser = new User(1L);
        newUser.setPassword("pass12@#1");
        newUser.setStatus(Constants.STATE_ACTIVATED);

        // simulation
        Mockito.when(userRepository.findByIdOrNull(updateRequest.userId())).thenReturn(user);
        Mockito.when(passwordEncoder.matches(updateRequest.oldPassword(), user.getPassword())).thenReturn(true);
        Mockito.when(passwordEncoder.encode(updateRequest.newPassword()))
                .thenReturn("lfjklte8728yzriuh-@lk./_nf");
        Mockito.when(userRepository.save(user)).thenReturn(newUser);

        // appel du service
        UserDTO userUpdated = userService.updateUserPassword(updateRequest);

        // Assertions
        Assertions.assertNotNull(userUpdated);
        Assertions.assertEquals(1, userUpdated.getId());
        Assertions.assertEquals("lfjklte8728yzriuh-@lk./_nf", userUpdated.getPassword());
        Assertions.assertEquals(Constants.STATE_ACTIVATED, userUpdated.getStatus());

        // vÃ©rifions si la mÃ©thode a Ã©tÃ© appelÃ©e au moins une fois
        verify(userRepository, times(1)).findByIdOrNull(1L);
        verify(userRepository, times(1)).save(user);
        verify(passwordEncoder, times(1)).encode(updateRequest.newPassword());
    }

    @Test
    void testresetPassword_WhenUserEmailIsNotValid_ThenAnKnownExceptionIsRaised() {

        String userEmail = "ibrahim@dimsoft.eu";

        // Simulation
        Mockito.when(userRepository.findByEmail(userEmail)).thenReturn(Optional.empty());

        // appel du service
        KnownException exception = assertThrows(KnownException.class,
                () -> userService.generateResetPasswordLink(userEmail));
        assertEquals(Constants.INVALID_USER_EMAIL, exception.getMessage());
        assertEquals(Constants.INVALID_USER_EMAIL_CODE, exception.getCode());

        // vÃ©rifions si la mÃ©thode a Ã©tÃ© appelÃ©e au moins une fois
        verify(userRepository, times(1)).findByEmail(userEmail);

    }

    @Test
    void testresetPassword_WhenTheUserIsDeleted_ThenAnKnownExceptionIsRaised() {

        String userEmail = "ibrahim@dimsoft.eu";

        // user in database
        User userFound = User.builder().firstName("Ibrahim").lastName("Cherif").email("cherif@dimsoft.eu")
                .phone("+237690807060").password("ibr@!/_12").roles(Arrays.asList(Role.USER)).build();

        userFound.setId(1L);
        userFound.setStatus(Constants.STATE_DELETED);

        // simulation
        Mockito.when(userRepository.findByEmail(userEmail)).thenReturn(Optional.of(userFound));

        // appel du service
        KnownException exception = assertThrows(KnownException.class,
                () -> userService.generateResetPasswordLink(userEmail));
        assertEquals(Constants.USER_ALREADY_DELETED, exception.getMessage());
        assertEquals(Constants.USER_ALREADY_DELETED_CODE, exception.getCode());

        // vÃ©rifions si la mÃ©thode a Ã©tÃ© appelÃ©e au moins une fois
        verify(userRepository, times(2)).findByEmail(userEmail);
    }

    @Test
    void testresetPassword_WhenTheUserIsNotActive_ThenAnKnownExceptionIsRaised() {

        String userEmail = "ibrahim@dimsoft.eu";

        // user in database
        User userFound = User.builder().firstName("Ibrahim").lastName("Cherif").email("cherif@dimsoft.eu")
                .phone("+237690807060").password("ibr@!/_12").roles(Arrays.asList(Role.USER)).build();
        userFound.setId(1L);
        userFound.setStatus(Constants.STATE_DEACTIVATED);

        // simulation
        Mockito.when(userRepository.findByEmail(userEmail)).thenReturn(Optional.of(userFound));

        // appel du service
        KnownException exception = assertThrows(KnownException.class,
                () -> userService.generateResetPasswordLink(userEmail));
        assertEquals(Constants.USER_ALREADY_DEACTIVATED, exception.getMessage());
        assertEquals(Constants.USER_ALREADY_DEACTIVATED_CODE, exception.getCode());

        // vÃ©rifions si la mÃ©thode a Ã©tÃ© appelÃ©e au moins une fois
        verify(userRepository, times(2)).findByEmail(userEmail);
    }

    @Test
    void testresetPassword_WhenTheUserIsLocked_ThenAnKnownExceptionIsRaised() {
        // userEmail
        String userEmail = "ibrahim@dimsoft.eu";

        // user in database
        User userFound = User.builder().firstName("Ibrahim").lastName("Cherif").email("cherif@dimsoft.eu")
                .phone("+237690807060").password("ibr@!/_12").roles(Arrays.asList(Role.USER)).build();
        userFound.setId(1L);
        userFound.setStatus(Constants.STATE_LOCKED);

        // simulation
        Mockito.when(userRepository.findByEmail(userEmail)).thenReturn(Optional.of(userFound));

        // appel du service
        KnownException exception = assertThrows(KnownException.class,
                () -> userService.generateResetPasswordLink(userEmail));
        assertEquals(Constants.USER_ACCOUNT_ALREADY_LOCKED, exception.getMessage());
        assertEquals(Constants.USER_ACCOUNT_ALREADY_LOCKED_CODE, exception.getCode());

        // vÃ©rifions si la mÃ©thode a Ã©tÃ© appelÃ©e au moins une fois
        verify(userRepository, times(2)).findByEmail(userEmail);
    }

    @Test
    void testresetPassword_WhenUserEmailIsValid_ThenResetPasswordLinkIsSucessfullyGenerated()
            throws KnownException, UnknownException {
        // userEmail
        String userEmail = "ibrahim@dimsoft.eu";

        // user in database
        User userFound = User.builder().firstName("Ibrahim").lastName("Cherif").email("ibrahim@dimsoft.eu")
                .phone("+237690807060").password("ibr@!/_12").roles(Arrays.asList(Role.USER)).build();
        userFound.setId(1L);
        userFound.setStatus(Constants.STATE_ACTIVATED);

        // Simulation
        Mockito.when(userRepository.findByEmail(userEmail)).thenReturn(Optional.of(userFound));
        IMap<Object, Object> mockMap = Mockito.mock(IMap.class);
        Mockito.when(hazelcastInstance.getMap("resetPasswordToken")).thenReturn(mockMap);

        // appel du service
        CacheToken cache = userService.generateResetPasswordLink(userEmail);

        // Vérification
        ArgumentCaptor<String> tokenCaptor = ArgumentCaptor.forClass(String.class);
        ArgumentCaptor<Long> idCaptor = ArgumentCaptor.forClass(Long.class);
        Mockito.verify(mockMap).put(tokenCaptor.capture(), idCaptor.capture());

        assertEquals(userFound.getId(), idCaptor.getValue());
        assertNotNull(cache);
        assertEquals(cache.token(), tokenCaptor.getValue());
        assertNotNull(tokenCaptor.getValue());
    }

    @Test
    void testConfirmResetPassword_whenTheCacheIsEmpty_ThenAnKnownExceptionIsRaised() {
        // initialisation
        ConfirmResetPasswordRequest request = new ConfirmResetPasswordRequest("lkmiyfvgcx", "Lamaille#1@1");

        // simulation
        Mockito.when(hazelcastInstance.getMap("resetPasswordToken")).thenReturn(null);

        // appel du service
        KnownException exception = assertThrows(KnownException.class,
                () -> userService.confirmResetPassword(request));
        assertEquals(Constants.EMPTY_CACHE, exception.getMessage());
        assertEquals(Constants.EMPTY_CACHE_CODE, exception.getCode());
    }

    @Test
    void testConfirmResetPassword_whenTheResetTokenHasExpired_ThenAnKnownExceptionIsRaised() {
        // initialisation
        ConfirmResetPasswordRequest request = new ConfirmResetPasswordRequest("lkmiyfvgcx", "Lamaille#1@1");

        // simulation
        IMap<Object, Object> mockMap = Mockito.mock(IMap.class);
        Mockito.when(hazelcastInstance.getMap("resetPasswordToken")).thenReturn(mockMap);
        Mockito.when(mockMap.get(request.token())).thenReturn(null);

        // appel du service
        KnownException exception = assertThrows(KnownException.class,
                () -> userService.confirmResetPassword(request));
        assertEquals(Constants.RESET_TOKEN_EXPIRED, exception.getMessage());
        assertEquals(Constants.RESET_TOKEN_EXPIRED_CODE, exception.getCode());
    }

    @Test
    void testConfirmResetPassword_whenTheResetTokenIsStillActive_ThenUserPasswordIsSuccessfullyUpdated()
            throws KnownException {

        // user in database
        User userFound = User.builder().firstName("Ibrahim").lastName("Cherif").email("cherif@dimsoft.eu")
                .phone("+237690807060").password("ibr@!/_12").roles(Arrays.asList(Role.USER)).build();
        userFound.setId(1L);
        userFound.setStatus(Constants.STATE_ACTIVATED);

        // new user
        User saveUser = User.builder().firstName("Ibrahim").lastName("Cherif").email("cherif@dimsoft.eu")
                .phone("+237690807060").password("ibr@!/_12").roles(Arrays.asList(Role.USER)).build();
        saveUser.setId(1L);
        saveUser.setPassword("lfjklte8728yzriuh-@lk./_nf");
        saveUser.setStatus(Constants.STATE_ACTIVATED);

        // initialisation
        ConfirmResetPasswordRequest request = new ConfirmResetPasswordRequest("lkmiyfvgcx", "Lamaille#1@1");

        // simulation
        IMap<Object, Object> mockMap = Mockito.mock(IMap.class);
        Mockito.when(hazelcastInstance.getMap("resetPasswordToken")).thenReturn(mockMap);
        Mockito.when(mockMap.get(request.token())).thenReturn(1L);
        Mockito.when(userRepository.findById(Mockito.anyLong())).thenReturn(Optional.of(userFound));
        Mockito.when(passwordEncoder.encode(request.newPassword()))
                .thenReturn("lfjklte8728yzriuh-@lk./_nf");
        Mockito.when(userRepository.save(userFound)).thenReturn(saveUser);

        // appel du service
        UserDTO updatedUser = userService.confirmResetPassword(request);

        // Assertions
        Assertions.assertNotNull(updatedUser);
        Assertions.assertEquals(1, updatedUser.getId());
        Assertions.assertEquals("lfjklte8728yzriuh-@lk./_nf", updatedUser.getPassword());
        Assertions.assertEquals(Constants.STATE_ACTIVATED, updatedUser.getStatus());

        // vérifions si la méthode a été appelée au moins une fois
        verify(userRepository, times(1)).findById(Mockito.anyLong());
        verify(userRepository, times(1)).save(userFound);
        verify(passwordEncoder, times(1)).encode(request.newPassword());
    }

    @Test
    void testUpdateUserProfil_whenIdIsValid_thenUserIsUpdatedSuccessfully() throws KnownException {
        // Création d'un user à utiliser pour l'update
        User user = User.builder().firstName("Ibrahim").lastName("Cherif").email("cherif@dimsoft.eu")
                .phone("+237690807060").password("ibr@!/_12").roles(Arrays.asList(Role.USER)).build();
        user.setId(1L);
        user.setStatus(Constants.STATE_ACTIVATED);

        // Simulation du comportement du repository.
        when(userRepository.findByIdOrNull(user.getId())).thenReturn(user);
        when(userRepository.save(user)).thenReturn(user);

        // Appeler la méthode update du service
        UserDTO updatedUser = userService.updateUserProfil(user);

        // Vérifier si la méthode findById du repository a été appelée
        verify(userRepository, times(1)).findByIdOrNull(1L);

        // Vérifier si la méthode save du repository a été appelée
        verify(userRepository, times(1)).save(user);

        // Vérifier si les propriétés de l'objet Jober ont été mises à jour
        Assertions.assertNotNull(updatedUser);
        Assertions.assertEquals(1, updatedUser.getId());
        Assertions.assertEquals("cherif@dimsoft.eu", updatedUser.getEmail());
        Assertions.assertEquals(Constants.STATE_ACTIVATED, updatedUser.getStatus());
    }

    @Test
    void testUpdateUserProfil_whenIdIsNull_thenUserIsNotUpdated() {
        // Cration d'un objet user sans ID.
        User user = User.builder().firstName("Ibrahim").lastName("Cherif").email("cherif@dimsoft.eu")
                .phone("+237690807060").password("ibr@!/_12").roles(Arrays.asList(Role.USER)).build();
        user.setStatus(Constants.STATE_ACTIVATED);

        // Appeler la méthode update du service
        KnownException exception = assertThrows(KnownException.class,
                () -> userService.updateUserProfil(user));
        assertEquals(Constants.USER_NOT_FOUND, exception.getMessage());
        assertEquals(Constants.USER_NOT_FOUND_CODE, exception.getCode());

        // Vérifier si la méthode findById du repository n'a pas été appelée
        verify(userRepository, never()).findByIdOrNull(anyLong());

        // Vérifier si la méthode save du repository n'a pas été appelée
        verify(userRepository, never()).save(user);
    }

    @Test
    void testUpdateUserProfil_whenUserIsAlreadyDeleted_thenUserIsNotUpdated() {
        // Cration d'un objet user sans ID.
        User user = User.builder().firstName("Ibrahim").lastName("Cherif").email("cherif@dimsoft.eu")
                .phone("+237690807060").password("ibr@!/_12").roles(Arrays.asList(Role.USER)).build();
        user.setId(1L);
        user.setStatus(Constants.STATE_DELETED);

        // Simulation du comportement du repository.
        when(userRepository.findByIdOrNull(user.getId())).thenReturn(user);

        // Appeler la méthode update du service
        KnownException exception = assertThrows(KnownException.class,
                () -> userService.updateUserProfil(user));
        assertEquals(Constants.USER_ALREADY_DELETED, exception.getMessage());
        assertEquals(Constants.USER_ALREADY_DELETED_CODE, exception.getCode());

        // Vérifier si la méthode findById du repository n'a pas été appelée
        verify(userRepository, times(1)).findByIdOrNull(anyLong());

        // Vérifier si la méthode save du repository n'a pas été appelée
        verify(userRepository, never()).save(user);
    }

    @Test
    void testUpdateUserProfil_whenUserIsAlreadyDeactivated_thenUserIsNotUpdated() {
        // Cration d'un objet user sans ID.
        User user = User.builder().firstName("Ibrahim").lastName("Cherif").email("cherif@dimsoft.eu")
                .phone("+237690807060").password("ibr@!/_12").roles(Arrays.asList(Role.USER)).build();
        user.setId(1L);
        user.setStatus(Constants.STATE_DEACTIVATED);

        // Simulation du comportement du repository.
        when(userRepository.findByIdOrNull(user.getId())).thenReturn(user);

        // Appeler la méthode update du service
        KnownException exception = assertThrows(KnownException.class,
                () -> userService.updateUserProfil(user));
        assertEquals(Constants.USER_ALREADY_DEACTIVATED, exception.getMessage());
        assertEquals(Constants.USER_ALREADY_DEACTIVATED_CODE, exception.getCode());

        // Vérifier si la méthode findById du repository n'a pas été appelée
        verify(userRepository, times(1)).findByIdOrNull(anyLong());

        // Vérifier si la méthode save du repository n'a pas été appelée
        verify(userRepository, never()).save(user);
    }

}
