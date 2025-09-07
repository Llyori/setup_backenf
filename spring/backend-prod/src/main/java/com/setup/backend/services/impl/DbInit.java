package com.setup.backend.services.impl;

import org.springframework.boot.CommandLineRunner;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Service;

import com.setup.backend.exceptions.KnownException;
import com.setup.backend.services.AuthenticationService;
import com.setup.backend.services.DBInitializationService;

@Service
@Configuration
public class DbInit {
    private DBInitializationService dbInitService;

    public DbInit(DBInitializationService dbInitService) {
        this.dbInitService = dbInitService;
    }

    @Bean
    CommandLineRunner commandLineRunner(
            AuthenticationService authenticationService) {
        return args -> {
            try {

                dbInitService.initUsers(authenticationService);
            } catch (KnownException e) {
                e.printStackTrace();
            }
        };
    }
}
