package com.setup.backend.controllers.unit_tests;

import static org.mockito.Mockito.times;

import java.util.Date;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import org.mockito.Mockito;
import org.springframework.boot.test.autoconfigure.web.servlet.WebMvcTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;

import com.setup.backend.controllers.AuthenticationController;
import com.setup.backend.models.ActivationRequest;
import com.setup.backend.models.UserDTO;
import com.setup.backend.records.AuthenticationResponse;
import com.setup.backend.services.AuthenticationService;
import com.setup.backend.services.UserService;
import com.setup.backend.setup.AbstractUnitTest;

@WebMvcTest(AuthenticationController.class)
class AuthenticationControllerTests extends AbstractUnitTest {

    @MockBean
    private AuthenticationService authenticationService;

    @MockBean
    private UserService userService;

    @Test
    void testCreateAuthenticationController_whenValidUser_thenAuthenticationCreatedSuccessfully()
            throws Exception {
        ActivationRequest activationRequest = ActivationRequest.builder().activationHash("kbkskoasdadf")
                .build();

        Mockito.when(authenticationService.activateAccount(Mockito.anyString()))
                .thenReturn(new AuthenticationResponse("", "", new UserDTO(), new Date()));

        ResponseEntity<AuthenticationResponse> responseEntity = doPost("/api/v1/auth/activate",
                activationRequest,
                AuthenticationResponse.class);

        Assertions.assertNotNull(responseEntity);
        Assertions.assertEquals(HttpStatus.OK, responseEntity.getStatusCode());
        AuthenticationResponse authenticationResponse = responseEntity.getBody();
        Assertions.assertNotNull(authenticationResponse);

        Mockito.verify(authenticationService, times(1)).activateAccount(activationRequest.getActivationHash());
        Assertions.assertEquals(MediaType.APPLICATION_JSON, responseEntity.getHeaders().getContentType());
    }
}
