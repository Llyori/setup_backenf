package com.setup.backend.controllers.integrations_tests;

import java.util.Arrays;
import java.util.List;
import java.util.Set;

import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.TestInstance;
import org.junit.jupiter.api.TestInstance.Lifecycle;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.ParameterizedTypeReference;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.security.crypto.password.PasswordEncoder;

import com.setup.backend.beans.User;
import com.setup.backend.enums.Role;
import com.setup.backend.models.UserDTO;
import com.setup.backend.records.LockOrBanAccountRequest;
import com.setup.backend.records.UpdateUserPasswordRequest;
import com.setup.backend.repositories.ActivationHashRepository;
import com.setup.backend.repositories.UserRepository;
import com.setup.backend.setup.AbstractIntegrationTest;
import com.setup.backend.utils.Constants;

@TestInstance(Lifecycle.PER_CLASS)
class UserControllerIntTests extends AbstractIntegrationTest {

        @Autowired
        private UserRepository userRepository;

        @Autowired
        private ActivationHashRepository activationHashRepository;

        @Autowired
        private PasswordEncoder passwordEncoder;

        private User principal = null;

        @BeforeEach
        void before() {
                activationHashRepository.deleteAll();
                userRepository.deleteAll();
        }

        @AfterEach
        void after() {
                activationHashRepository.deleteAll();
                userRepository.deleteAll();
        }

        @Test
        void testCreateUserController_whenAllInformationsAreCorrect_thenAUserIsCreatedSuccessfully()
                        throws Exception {
                UserDTO userDTO = new UserDTO("Zemtsop", "Arleon", "alexdongmo@dimsoft.eu", "+237671277595",
                                "123456");

                ResponseEntity<UserDTO> postResponseEntity = doPost("/users/create", userDTO,
                                UserDTO.class);
                Assertions.assertNotNull(postResponseEntity);

                UserDTO userDtoCreated = postResponseEntity.getBody();
                Assertions.assertEquals(HttpStatus.CREATED, postResponseEntity.getStatusCode());
                Assertions.assertEquals(MediaType.APPLICATION_JSON, postResponseEntity.getHeaders().getContentType());
                Assertions.assertNotNull(userDtoCreated.getId());
                Assertions.assertEquals(userDTO.getFirstName(), userDtoCreated.getFirstName());
                Assertions.assertEquals(userDTO.getLastName(), userDtoCreated.getLastName());
                Assertions.assertEquals(userDTO.getEmail(), userDtoCreated.getEmail());
                Assertions.assertEquals(userDTO.getPhone(), userDtoCreated.getPhone());
                Assertions.assertNotNull(userDtoCreated.getRoles());
                Assertions.assertEquals(1, userDtoCreated.getRoles().size());
                Assertions.assertEquals(userDtoCreated.getRoles().get(0), Role.USER);

                Assertions.assertTrue(userRepository.existsById(userDtoCreated.getId()));
                User userInDatabase = userRepository
                                .findById(userDtoCreated.getId()).orElse(null);
                Assertions.assertNotNull(userInDatabase);
        }

        @Test
        void testGetUserRolesListController_whenUserExist_thenReturnASetOfHisRoles() throws Exception {
                User user = User.builder().firstName("Ibrahim").lastName("Cherif").email("cherif@dimsoft.eu")
                                .phone("+237690807060").password("ibr@!/_12").build();

                user.setRoles(List.of(Role.ADMIN, Role.USER, Role.USER));

                var userSaved = userRepository.save(user);

                ResponseEntity<Set<String>> getResponseEntity = doGet("/users/getUserRolesList/{userId}",
                                new ParameterizedTypeReference<Set<String>>() {
                                }, userSaved.getId());

                Assertions.assertNotNull(getResponseEntity);
                Assertions.assertEquals(HttpStatus.OK, getResponseEntity.getStatusCode());
                Assertions.assertEquals(MediaType.APPLICATION_JSON, getResponseEntity.getHeaders().getContentType());
                Set<String> roleSet = getResponseEntity.getBody();
                Assertions.assertNotNull(roleSet);
                Assertions.assertTrue(roleSet.contains(Role.ADMIN.toString()));
                Assertions.assertTrue(roleSet.contains(Role.USER.toString()));
                Assertions.assertEquals(2, roleSet.size());
        }

        @Test
        void testLockUserAccountController_whenAllTheConditionsAreValid_thenTheUserAccountIsSuccessfullyLocked()
                        throws Exception {
                // utilisateur à bloquer.
                User user = User.builder().firstName("Ibrahim").lastName("Cherif").email("ibrahim1@dimsoft.eu")
                                .phone("+237690807060").password("ibr@!/_12").roles(Arrays.asList(Role.USER)).build();
                var userSaved = userRepository.save(user);

                LockOrBanAccountRequest lockAccountRequest = new LockOrBanAccountRequest(userSaved.getId(),
                                "Utilisateur bloqué pour le cadre du test d'intégration.");

                // simulation connected user.
                initConnectedUserForTest(principal, userRepository);

                ResponseEntity<UserDTO> responseEntity = doPost("/users/lock-user-account", lockAccountRequest,
                                UserDTO.class);

                Assertions.assertNotNull(responseEntity);
                Assertions.assertEquals(HttpStatus.OK, responseEntity.getStatusCode());
                Assertions.assertNotNull(responseEntity.getBody());
                var userLocked = responseEntity.getBody();
                Assertions.assertNotNull(userLocked);
                Assertions.assertEquals(Constants.STATE_LOCKED, userLocked.getStatus());
                Assertions.assertEquals(MediaType.APPLICATION_JSON,
                                responseEntity.getHeaders().getContentType());
                Assertions.assertEquals(HttpStatus.OK, responseEntity.getStatusCode());

        }

        @Test
        void testUpdateUserController_whenAllInformationsAreCorrect_thenAUserIsUpdatedSuccessfully()
                        throws Exception {

                User user = User.builder().firstName("Ibrahim").lastName("Cherif").email("cherif@dimsoft.eu")
                                .phone("+237690807060").password("ibr@!/_12").roles(Arrays.asList(Role.USER)).build();
                var userDTO = User.fromUser(userRepository.save(user));

                ResponseEntity<UserDTO> postResponseEntity = doPut("/users/update", userDTO, UserDTO.class);

                Assertions.assertNotNull(postResponseEntity);

                UserDTO userUpdated = postResponseEntity.getBody();
                Assertions.assertEquals(HttpStatus.OK, postResponseEntity.getStatusCode());
                Assertions.assertEquals(MediaType.APPLICATION_JSON, postResponseEntity.getHeaders().getContentType());
                Assertions.assertNotNull(userUpdated);
                Assertions.assertNotNull(userUpdated.getId());
                Assertions.assertEquals(user.getFirstName(), userUpdated.getFirstName());
                Assertions.assertEquals(user.getLastName(), userUpdated.getLastName());
                Assertions.assertEquals(user.getEmail(), userUpdated.getEmail());
                Assertions.assertEquals(user.getPhone(), userUpdated.getPhone());
                Assertions.assertNotNull(userUpdated.getRoles());
                Assertions.assertEquals(1, userUpdated.getRoles().size());
                Assertions.assertEquals(userUpdated.getRoles().get(0), Role.USER);

                Assertions.assertTrue(userRepository.existsById(userUpdated.getId()));
                User userInDatabase = userRepository
                                .findById(userUpdated.getId()).orElse(null);
                Assertions.assertNotNull(userInDatabase);
        }

        @Test
        void testUpdateUserPasswordController_whenAllInformationsAreCorrect_thenAUserIsUpdatedSuccessfully()
                        throws Exception {

                User user = User.builder().firstName("Ibrahim").lastName("Cherif").email("cherif@dimsoft.eu")
                                .phone("+237690807060").password("ibr@!/_12").roles(Arrays.asList(Role.USER)).build();
                user.setPassword(passwordEncoder.encode("ibr@op!/_12"));
                var saveUser = userRepository.save(user);

                UpdateUserPasswordRequest updateRequest = new UpdateUserPasswordRequest(saveUser.getId(), "ibr@op!/_12",
                                "pass12@#1");

                ResponseEntity<UserDTO> postResponseEntity = doPut("/users/update-user-password", updateRequest,
                                UserDTO.class);

                Assertions.assertNotNull(postResponseEntity);

                UserDTO userUpdated = postResponseEntity.getBody();
                Assertions.assertEquals(HttpStatus.OK, postResponseEntity.getStatusCode());
                Assertions.assertEquals(MediaType.APPLICATION_JSON, postResponseEntity.getHeaders().getContentType());
                Assertions.assertNotNull(userUpdated);
                Assertions.assertNotNull(userUpdated.getId());
                Assertions.assertEquals(user.getFirstName(), userUpdated.getFirstName());
                Assertions.assertEquals(user.getLastName(), userUpdated.getLastName());
                Assertions.assertEquals(user.getEmail(), userUpdated.getEmail());
                Assertions.assertEquals(user.getPhone(), userUpdated.getPhone());
                Assertions.assertTrue(passwordEncoder.matches(updateRequest.newPassword(), userUpdated.getPassword()));

                Assertions.assertTrue(userRepository.existsById(userUpdated.getId()));
                User userInDatabase = userRepository
                                .findById(userUpdated.getId()).orElse(null);
                Assertions.assertNotNull(userInDatabase);
        }

        @Test
        void testUpdateUserProfilController_whenAllInformationsAreCorrect_thenAUserIsUpdatedSuccessfully()
                        throws Exception {

                User user = User.builder().firstName("Ibrahim").lastName("Cherif").email("cherif@dimsoft.eu")
                                .phone("+237690807060").password("ibr@!/_12").roles(Arrays.asList(Role.USER)).build();
                var userDTO = User.fromUser(userRepository.save(user));

                ResponseEntity<UserDTO> postResponseEntity = doPut("/users/update-profil", userDTO, UserDTO.class);

                Assertions.assertNotNull(postResponseEntity);

                UserDTO userUpdated = postResponseEntity.getBody();
                Assertions.assertEquals(HttpStatus.OK, postResponseEntity.getStatusCode());
                Assertions.assertEquals(MediaType.APPLICATION_JSON, postResponseEntity.getHeaders().getContentType());
                Assertions.assertNotNull(userUpdated);
                Assertions.assertNotNull(userUpdated.getId());
                Assertions.assertEquals(user.getFirstName(), userUpdated.getFirstName());
                Assertions.assertEquals(user.getLastName(), userUpdated.getLastName());
                Assertions.assertEquals(user.getEmail(), userUpdated.getEmail());
                Assertions.assertEquals(user.getPhone(), userUpdated.getPhone());

                Assertions.assertTrue(userRepository.existsById(userUpdated.getId()));
                User userInDatabase = userRepository
                                .findById(userUpdated.getId()).orElse(null);
                Assertions.assertNotNull(userInDatabase);
        }

        @Test
        void testDeleteUserWhenUserExist() throws Exception {
                User user = User.builder().firstName("Ibrahim").lastName("Cherif").email("cherif@dimsoft.eu")
                                .phone("+237690807060").password("ibr@!/_12").roles(Arrays.asList(Role.USER)).build();
                user.setStatus(Constants.STATE_ACTIVATED);

                User userSaved = userRepository.save(user);

                ResponseEntity<UserDTO> getResponseEntity = doGet("/users/deleteUser/{userId}",
                                new ParameterizedTypeReference<UserDTO>() {
                                }, userSaved.getId());

                Assertions.assertNotNull(getResponseEntity);
                UserDTO userDeleted = getResponseEntity.getBody();
                Assertions.assertNotNull(userDeleted);
                Assertions.assertEquals(HttpStatus.OK, getResponseEntity.getStatusCode());
                Assertions.assertEquals(userSaved.getId(), userDeleted.getId());
                Assertions.assertEquals(Constants.STATE_DELETED, userDeleted.getStatus());
        }

}
