package com.setup.backend.records;

public record ConfirmResetPasswordRequest(
        String token,
        String newPassword) {

}
