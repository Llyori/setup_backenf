package com.setup.backend.controllers.unit_tests;

import static org.mockito.ArgumentMatchers.anyString;

import java.util.Arrays;
import java.util.Set;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import org.mockito.Mockito;
import org.springframework.boot.test.autoconfigure.web.servlet.WebMvcTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.core.ParameterizedTypeReference;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.test.web.servlet.MvcResult;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.setup.backend.beans.User;
import com.setup.backend.controllers.UserController;
import com.setup.backend.enums.Role;
import com.setup.backend.exceptions.ErrorResponse;
import com.setup.backend.models.UserDTO;
import com.setup.backend.records.CacheToken;
import com.setup.backend.records.ConfirmResetPasswordRequest;
import com.setup.backend.records.LockOrBanAccountRequest;
import com.setup.backend.records.UpdateUserPasswordRequest;
import com.setup.backend.services.UserService;
import com.setup.backend.setup.AbstractUnitTest;
import com.setup.backend.utils.Constants;

@WebMvcTest(UserController.class)
class UserControllerTests extends AbstractUnitTest {

        @MockBean
        private UserService userService;

        @Test
        void testCreateUserController_whenValidUser_thenUserCreatedSuccessfully() throws Exception {
                UserDTO userDTO = new UserDTO("Zemtsop", "Arléon", "arleonzemtsop@gmail.com", "+237671277595",
                                "123456");

                Mockito.when(userService.create(Mockito.any(UserDTO.class))).thenReturn(new User());

                ResponseEntity<UserDTO> responseEntity = doPost("/users/create", userDTO, UserDTO.class);

                Assertions.assertNotNull(responseEntity);
                Assertions.assertEquals(HttpStatus.CREATED, responseEntity.getStatusCode());
                UserDTO createdUser = responseEntity.getBody();
                Assertions.assertNotNull(createdUser);
                Assertions.assertEquals(MediaType.APPLICATION_JSON, responseEntity.getHeaders().getContentType());
        }

        @Test
        void testGetUserRolesListController_whenUserExist_thenReturnASetOfHisRoles()
                        throws Exception {
                Long userId = 1L;

                Mockito.when(userService.getUserRolesList(userId))
                                .thenReturn(Set.of(Role.ADMIN.toString(), Role.USER.toString()));

                ResponseEntity<Set<String>> getResponseEntity = doGet("/users/getUserRolesList/{userId}",
                                new ParameterizedTypeReference<Set<String>>() {
                                }, userId);

                Assertions.assertNotNull(getResponseEntity);
                Assertions.assertEquals(HttpStatus.OK, getResponseEntity.getStatusCode());
                Assertions.assertEquals(MediaType.APPLICATION_JSON, getResponseEntity.getHeaders().getContentType());
                Set<String> roleSet = getResponseEntity.getBody();
                Assertions.assertNotNull(roleSet);
                Assertions.assertTrue(roleSet.contains(Role.ADMIN.toString()));
                Assertions.assertTrue(roleSet.contains(Role.USER.toString()));
        }

        @Test
        void testLockUserAccountController_whenTheUserAccountExistsAndIsActive_thenTheUserAccountIsSuccessfullyLocked()
                        throws Exception {
                LockOrBanAccountRequest lockAccountRequest = new LockOrBanAccountRequest(1L,
                                "Utilisateur bloqué pour excès de lolo juice");
                // Objet user bloqué
                User user = User.builder().firstName("Ibrahim").lastName("Cherif").email("cherif@dimsoft.eu")
                                .phone("+237690807060").password("ibr@!/_12").roles(Arrays.asList(Role.USER)).build();
                user.setStatus(Constants.STATE_LOCKED);

                Mockito.when(userService.lockUserAccount(lockAccountRequest)).thenReturn(new UserDTO(user));
                ResponseEntity<UserDTO> responseEntity = doPost(
                                "/users/lock-user-account", lockAccountRequest, UserDTO.class);

                Assertions.assertNotNull(responseEntity);
                Assertions.assertEquals(HttpStatus.OK, responseEntity.getStatusCode());
                Assertions.assertNotNull(responseEntity.getBody());
                var userLocked = responseEntity.getBody();
                Assertions.assertNotNull(userLocked);
                Assertions.assertEquals(Constants.STATE_LOCKED, userLocked.getStatus());
                Assertions.assertEquals(MediaType.APPLICATION_JSON, responseEntity.getHeaders().getContentType());

        }

        @Test
        void testUpdateUserController_whenUserExists_thenReturnUpdatedUser() throws Exception {

                User user = User.builder().firstName("Ibrahim").lastName("Cherif").email("cherif@dimsoft.eu")
                                .phone("+237690807060").password("ibr@!/_12").roles(Arrays.asList(Role.USER)).build();
                user.setId(1L);
                var userDTO = User.fromUser(user);

                Mockito.when(userService.findById(user.getId())).thenReturn(new User());
                Mockito.when(userService.update(Mockito.any(User.class))).thenReturn(new UserDTO(user));

                ResponseEntity<UserDTO> responseEntity = doPut("/users/update", userDTO, UserDTO.class);
                Assertions.assertNotNull(responseEntity);
                Assertions.assertEquals(HttpStatus.OK, responseEntity.getStatusCode());
                UserDTO updatedUser = responseEntity.getBody();
                Assertions.assertNotNull(updatedUser);
                Assertions.assertEquals(MediaType.APPLICATION_JSON, responseEntity.getHeaders().getContentType());
        }

        @Test
        void testUpdateUserController_whenUserNotFound_thenThrowKnownException() throws Exception {
                User user = User.builder().firstName("Ibrahim").lastName("Cherif").email("cherif@dimsoft.eu")
                                .phone("+237690807060").password("ibr@!/_12").roles(Arrays.asList(Role.USER)).build();
                user.setId(1L);
                var userDTO = User.fromUser(user);

                Mockito.when(userService.findById(Mockito.anyLong())).thenReturn(null);

                ResponseEntity<ErrorResponse> responseEntity = doPut("/users/update", userDTO,
                                new ParameterizedTypeReference<ErrorResponse>() {
                                });

                Assertions.assertNotNull(responseEntity);
                Assertions.assertEquals(HttpStatus.NOT_FOUND, responseEntity.getStatusCode());
                ErrorResponse errorResponse = responseEntity.getBody();
                Assertions.assertNotNull(errorResponse);
                Assertions.assertEquals(Constants.USER_NOT_FOUND_CODE, errorResponse.getCode());
                Assertions.assertEquals(Constants.USER_NOT_FOUND, errorResponse.getMessage());
                Assertions.assertEquals(MediaType.APPLICATION_JSON, responseEntity.getHeaders().getContentType());
        }

        @Test
        void testUpdateUserPasswordController_WhenTheUserExistsAndIsActive_ThenUserPasswordIsSuccessfullyUpdated()
                        throws Exception {

                UpdateUserPasswordRequest updateRequest = new UpdateUserPasswordRequest(1L, "ibr@!/_12", "pass12@#1");

                User user = User.builder().firstName("Ibrahim").lastName("Cherif").email("cherif@dimsoft.eu")
                                .phone("+237690807060").password("pass12@#1").roles(Arrays.asList(Role.USER)).build();
                user.setId(1L);

                Mockito.when(userService.findById(user.getId())).thenReturn(new User());
                Mockito.when(userService.updateUserPassword(updateRequest)).thenReturn(new UserDTO(user));

                ResponseEntity<UserDTO> responseEntity = doPut("/users/update-user-password", updateRequest,
                                UserDTO.class);
                Assertions.assertNotNull(responseEntity);
                Assertions.assertEquals(HttpStatus.OK, responseEntity.getStatusCode());
                UserDTO updatedUser = responseEntity.getBody();
                Assertions.assertNotNull(updatedUser);
                Assertions.assertEquals(updateRequest.newPassword(), updatedUser.getPassword());
                Assertions.assertEquals(Constants.STATE_ACTIVATED, updatedUser.getStatus());
                Assertions.assertEquals(MediaType.APPLICATION_JSON, responseEntity.getHeaders().getContentType());
        }

        @Test
        void testUpdateUserPasswordController_whenUserDoesNotExists_thenThrowKnownException() throws Exception {
                UpdateUserPasswordRequest updateRequest = new UpdateUserPasswordRequest(1L, "ibr@!/_12", "pass12@#1");
                User user = User.builder().firstName("Ibrahim").lastName("Cherif").email("cherif@dimsoft.eu")
                                .phone("+237690807060").password("ibr@!/_12").roles(Arrays.asList(Role.USER)).build();

                user.setId(1L);

                Mockito.when(userService.findById(Mockito.anyLong())).thenReturn(null);

                ResponseEntity<ErrorResponse> responseEntity = doPut(
                                "/users/update-user-password", updateRequest,
                                new ParameterizedTypeReference<ErrorResponse>() {
                                });

                Assertions.assertNotNull(responseEntity);
                Assertions.assertEquals(HttpStatus.NOT_FOUND, responseEntity.getStatusCode());
                ErrorResponse errorResponse = responseEntity.getBody();
                Assertions.assertNotNull(errorResponse);
                Assertions.assertEquals(Constants.USER_NOT_FOUND_CODE, errorResponse.getCode());
                Assertions.assertEquals(Constants.USER_NOT_FOUND, errorResponse.getMessage());
                Assertions.assertEquals(MediaType.APPLICATION_JSON, responseEntity.getHeaders().getContentType());
        }

        @Test
        void testresetPasswordController_WhenUserEmailIsValid_ThenResetPasswordLinkIsSucessfullyGenerated()
                        throws Exception {
                // userEmail
                String userEmail = "ibrahim@dimsoft.eu";

                // user in database
                User user = User.builder().firstName("Ibrahim").lastName("Cherif").email("cherif@dimsoft.eu")
                                .phone("+237690807060").password("ibr@!/_12").roles(Arrays.asList(Role.USER)).build();
                user.setId(1L);
                user.setStatus(Constants.STATE_ACTIVATED);
                Mockito.when(userService.generateResetPasswordLink(anyString()))
                                .thenReturn(new CacheToken("dd54f7b6-ad53-42c4-bc21-ece598e0b841"));

                // execution de la requete avec requestParam
                MvcResult result = mockMvc.perform(MockMvcRequestBuilders.post("/users/reset-user-password")
                                .param("email", userEmail)
                                .accept(MediaType.APPLICATION_JSON))
                                .andReturn();

                // Verifications
                Assertions.assertEquals(HttpStatus.OK.value(), result.getResponse().getStatus());
                CacheToken cache = new ObjectMapper().readValue(result.getResponse().getContentAsString(),
                                CacheToken.class);
                Assertions.assertNotNull(cache);
                Assertions.assertEquals("dd54f7b6-ad53-42c4-bc21-ece598e0b841", cache.token());

        }

        @Test
        void testConfirmResetPassword_whenTheResetTokenIsStillActive_ThenUserPasswordIsSuccessfullyUpdated()
                        throws Exception {

                // user in database
                User user = User.builder().firstName("Ibrahim").lastName("Cherif").email("cherif@dimsoft.eu")
                                .phone("+237690807060").password("Lamaille#1@1").roles(Arrays.asList(Role.USER))
                                .build();
                user.setId(1L);
                user.setStatus(Constants.STATE_ACTIVATED);

                // initialisation
                ConfirmResetPasswordRequest request = new ConfirmResetPasswordRequest("lkmiyfvgcx", "Lamaille#1@1");

                Mockito.when(userService.confirmResetPassword(request)).thenReturn(new UserDTO(user));

                ResponseEntity<UserDTO> responseEntity = doPost("/users/confirm-reset-password", request,
                                UserDTO.class);
                Assertions.assertNotNull(responseEntity);
                Assertions.assertEquals(HttpStatus.OK, responseEntity.getStatusCode());
                UserDTO updatedUser = responseEntity.getBody();
                Assertions.assertNotNull(updatedUser);
                Assertions.assertEquals(request.newPassword(), updatedUser.getPassword());
                Assertions.assertEquals(Constants.STATE_ACTIVATED, updatedUser.getStatus());
                Assertions.assertEquals(MediaType.APPLICATION_JSON, responseEntity.getHeaders().getContentType());
        }

        @Test
        void testUpdateUserProfilController_whenUserExists_thenReturnUpdatedUser() throws Exception {

                User user = User.builder().firstName("Ibrahim").lastName("Cherif").email("cherif@dimsoft.eu")
                                .phone("+237690807060").password("ibr@!/_12").roles(Arrays.asList(Role.USER)).build();
                user.setId(1L);
                var userDTO = User.fromUser(user);

                Mockito.when(userService.findById(user.getId())).thenReturn(new User());
                Mockito.when(userService.updateUserProfil(Mockito.any(User.class))).thenReturn(new UserDTO(user));

                ResponseEntity<UserDTO> responseEntity = doPut("/users/update-profil", userDTO, UserDTO.class);
                Assertions.assertNotNull(responseEntity);
                Assertions.assertEquals(HttpStatus.OK, responseEntity.getStatusCode());
                UserDTO updatedUser = responseEntity.getBody();
                Assertions.assertNotNull(updatedUser);
                Assertions.assertEquals(MediaType.APPLICATION_JSON, responseEntity.getHeaders().getContentType());
        }

        @Test
        void testUpdateUserProfilController_whenUserNotFound_thenThrowKnownException() throws Exception {
                User user = User.builder().firstName("Ibrahim").lastName("Cherif").email("cherif@dimsoft.eu")
                                .phone("+237690807060").password("ibr@!/_12").roles(Arrays.asList(Role.USER)).build();
                user.setId(1L);
                var userDTO = User.fromUser(user);

                Mockito.when(userService.findById(Mockito.anyLong())).thenReturn(null);

                ResponseEntity<ErrorResponse> responseEntity = doPut("/users/update-profil",
                                userDTO,
                                new ParameterizedTypeReference<ErrorResponse>() {
                                });

                Assertions.assertNotNull(responseEntity);
                Assertions.assertEquals(HttpStatus.NOT_FOUND, responseEntity.getStatusCode());
                ErrorResponse errorResponse = responseEntity.getBody();
                Assertions.assertNotNull(errorResponse);
                Assertions.assertEquals(Constants.USER_NOT_FOUND_CODE, errorResponse.getCode());
                Assertions.assertEquals(Constants.USER_NOT_FOUND, errorResponse.getMessage());
                Assertions.assertEquals(MediaType.APPLICATION_JSON, responseEntity.getHeaders().getContentType());
        }
}
