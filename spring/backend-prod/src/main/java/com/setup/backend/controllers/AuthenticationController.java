package com.setup.backend.controllers;

import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.validation.Valid;
import java.io.IOException;
import lombok.RequiredArgsConstructor;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.setup.backend.exceptions.KnownException;
import com.setup.backend.models.ActivationRequest;
import com.setup.backend.models.ResponseDTO;
import com.setup.backend.records.AuthenticationRequest;
import com.setup.backend.records.AuthenticationResponse;
import com.setup.backend.records.RegisterRequest;
import com.setup.backend.services.AuthenticationService;

@RestController
@RequestMapping("api/v1/auth")
@RequiredArgsConstructor
@Tag(name = "Authentication")
@CrossOrigin("*")
public class AuthenticationController {
    private final AuthenticationService authenticationService;

    @PostMapping("register")
    public ResponseEntity<AuthenticationResponse> register(@RequestBody RegisterRequest registerRequest)
            throws KnownException {
        return ResponseEntity.ok(authenticationService.register(registerRequest));
    }

    @PostMapping("authenticate")
    public ResponseEntity<AuthenticationResponse> authenticate(
            @RequestBody AuthenticationRequest authenticationRequest) throws KnownException {
        return ResponseEntity.ok(authenticationService.authenticate(authenticationRequest));
    }

    @PostMapping("refresh-token")
    public void refreshToken(
            HttpServletRequest request,
            HttpServletResponse response) throws IOException {
        authenticationService.refreshToken(request, response);
    }

    @PostMapping(value = "activate", produces = MediaType.APPLICATION_JSON_VALUE, consumes = MediaType.APPLICATION_JSON_VALUE)
    public ResponseEntity<AuthenticationResponse> activateAccount(
            @RequestBody @Valid ActivationRequest activationRequest) throws KnownException {
        return ResponseEntity.ok(authenticationService.activateAccount(activationRequest.getActivationHash()));
    }

    @PostMapping(value = "/new-account-activation-link", produces = MediaType.APPLICATION_JSON_VALUE, consumes = MediaType.APPLICATION_JSON_VALUE)
    public ResponseEntity<ResponseDTO> regenerateAccountActivationLink(
            @RequestBody @Valid ActivationRequest activationRequest) throws KnownException {
        return ResponseEntity.ok(
                authenticationService.generateNewActivationHash(activationRequest.getActivationHash()));
    }
}
