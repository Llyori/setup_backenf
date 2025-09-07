package com.setup.backend.services.impl;

import com.setup.backend.enums.Role;
import com.setup.backend.exceptions.KnownException;
import com.setup.backend.records.AuthenticationResponse;
import com.setup.backend.records.RegisterRequest;
import com.setup.backend.services.AuthenticationService;
import com.setup.backend.services.DBInitializationService;

import java.util.Arrays;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

@Service
public class DBInitializationServiceImpl implements DBInitializationService {

    private static final Logger logger = LoggerFactory.getLogger(DBInitializationServiceImpl.class);
    private static final String PASSWORD = "AdminMecenat.2025";
    private static final String PHONE = "650 40 30 20";

    @Override
    public void initUsers(AuthenticationService authenticationService) throws KnownException {
        RegisterRequest admin = new RegisterRequest(
                "The",
                "admin",
                "admin@test.com",
                PHONE,
                PASSWORD,
                Arrays.asList(Role.ADMIN));
        AuthenticationResponse authenticationResponseAdmin = authenticationService.register(admin);
        if (authenticationResponseAdmin != null)
            logger.info("admin token: {}", authenticationResponseAdmin.accessToken());
        else
            logger.error("Unable to authenticate default admin: {} {}",
                    admin.firstName() + admin.lastName(),
                    admin.email());

        RegisterRequest user = new RegisterRequest(
                "The",
                "User",
                "user@test.com",
                PHONE,
                PASSWORD,
                Arrays.asList(Role.USER));
        AuthenticationResponse authenticationResponseUser = authenticationService.register(user);
        if (authenticationResponseUser != null)
            logger.info("User token: {}", authenticationResponseUser.accessToken());
        else
            logger.error("Unable to authenticate default user: {} {}", user.firstName() + user.lastName(),
                    user.email());

        RegisterRequest enterprise = new RegisterRequest(
                "The",
                "Enterprise",
                "enterprise@test.com",
                PHONE,
                PASSWORD,
                Arrays.asList(Role.ENTERPRISE));
        AuthenticationResponse authenticationResponseEnterprise = authenticationService.register(enterprise);
        if (authenticationResponseEnterprise != null)
            logger.info("Enterprise token: {}", authenticationResponseEnterprise.accessToken());
        else
            logger.error("Unable to authenticate default enterprise: {} {}",
                    enterprise.firstName() + enterprise.lastName(),
                    enterprise.email());

        RegisterRequest association = new RegisterRequest(
                "The",
                "association",
                "association@test.com",
                PHONE,
                PASSWORD,
                Arrays.asList(Role.ASSOCIATION));
        AuthenticationResponse authenticationResponseAssociation = authenticationService.register(association);
        if (authenticationResponseAssociation != null)
            logger.info("association token: {}", authenticationResponseAssociation.accessToken());
        else
            logger.error("Unable to authenticate default association: {} {}",
                    association.firstName() + association.lastName(),
                    association.email());
    }

}
