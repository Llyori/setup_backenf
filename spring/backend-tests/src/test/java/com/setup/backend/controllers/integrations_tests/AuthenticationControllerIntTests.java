package com.setup.backend.controllers.integrations_tests;

import java.time.LocalDateTime;
import java.util.Arrays;
import java.util.Date;

import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.web.client.TestRestTemplate;
import org.springframework.boot.test.web.server.LocalServerPort;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.test.annotation.DirtiesContext;
import org.springframework.test.context.ActiveProfiles;

import com.setup.backend.BackendApplication;
import com.setup.backend.beans.ActivationHash;
import com.setup.backend.beans.User;
import com.setup.backend.enums.Role;
import com.setup.backend.models.ActivationRequest;
import com.setup.backend.records.AuthenticationResponse;
import com.setup.backend.repositories.ActivationHashRepository;
import com.setup.backend.repositories.TokenRepository;
import com.setup.backend.repositories.UserRepository;
import com.setup.backend.utils.ActivationHashGenerator;
import com.setup.backend.utils.Constants;

@SpringBootTest(classes = BackendApplication.class, webEnvironment = SpringBootTest.WebEnvironment.RANDOM_PORT)
@DirtiesContext
@ActiveProfiles("test")
class AuthenticationControllerIntTests {

    @LocalServerPort
    protected int port;

    @Autowired
    protected TestRestTemplate restTemplate;

    @Autowired
    private TokenRepository tokenRespository;

    @Autowired
    private ActivationHashRepository activationHashRepository;

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private PasswordEncoder passwordEncoder;

    @BeforeEach
    void before() {
        tokenRespository.deleteAll();
        activationHashRepository.deleteAll();
        userRepository.deleteAll();
    }

    @AfterEach
    void after() {
        tokenRespository.deleteAll();
        activationHashRepository.deleteAll();
        userRepository.deleteAll();
    }

    @Test
    void testActivateAccountController_whenAllInformationsAreCorrect_thenAnAccountIsActivatedSuccessfully()
            throws Exception {
        User usr = new User();
        usr.setStatus(Constants.STATE_DEACTIVATED);
        usr.setPassword(passwordEncoder.encode("sample-password"));
        usr.setEmail("alexdongmo@dimsoft.eu");
        usr.setFirstName("parent");
        usr.setPhone("690 00 00 00");
        usr.setLastName("Alex");
        usr.setCreatedOn(new Date());
        usr.setRoles(Arrays.asList(Role.USER));

        User newUser = userRepository.save(usr);

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

        var activationRequest = new ActivationRequest(activationHash);

        ResponseEntity<AuthenticationResponse> postResponseEntity = restTemplate.postForEntity(
                "http://localhost:" + port + "/api/v1/auth/activate", activationRequest,
                AuthenticationResponse.class);
        Assertions.assertNotNull(postResponseEntity);

        AuthenticationResponse authenticationResponse = postResponseEntity.getBody();
        Assertions.assertEquals(HttpStatus.OK, postResponseEntity.getStatusCode());
        Assertions.assertNotNull(authenticationResponse);
        Assertions.assertNotNull(authenticationResponse.accessToken());
        Assertions.assertNotNull(authenticationResponse.refreshToken());
        var activatedUser = authenticationResponse.user();
        Assertions.assertNotNull(activatedUser);
        Assertions.assertNotNull(activatedUser.getRolesString());
        Assertions.assertNotNull(activatedUser.getRoles());
        Assertions.assertEquals(Constants.STATE_ACTIVATED, activatedUser.getStatus());
        Assertions.assertNull(activationHashRepository.findByHash(activationHash));
    }

}
