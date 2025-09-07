package com.setup.backend.services;

import java.io.IOException;

import org.springframework.security.core.Authentication;

import com.setup.backend.beans.User;
import com.setup.backend.exceptions.KnownException;
import com.setup.backend.models.ResponseDTO;
import com.setup.backend.records.AuthenticationRequest;
import com.setup.backend.records.AuthenticationResponse;
import com.setup.backend.records.RegisterRequest;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public interface AuthenticationService {
    public AuthenticationResponse register(RegisterRequest registerRequest) throws KnownException;

    public AuthenticationResponse authenticate(AuthenticationRequest authenticationRequest) throws KnownException;

    public void refreshToken(HttpServletRequest request, HttpServletResponse response) throws IOException;

    public AuthenticationResponse activateAccount(String activationHash) throws KnownException;

    public Authentication getAuthentication();

    public User getConnectedUser();

    public ResponseDTO generateNewActivationHash(String holdHash) throws KnownException;
}
