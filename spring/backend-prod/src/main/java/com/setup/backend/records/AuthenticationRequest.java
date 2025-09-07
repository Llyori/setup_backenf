package com.setup.backend.records;

public record AuthenticationRequest(
        String email,
        String password) {
}
