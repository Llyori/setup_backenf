package com.setup.backend.services;

import com.setup.backend.exceptions.KnownException;

public interface DBInitializationService {
    public void initUsers(AuthenticationService authenticationService) throws KnownException;

}
