package com.setup.backend.records;

public record UpdateUserPasswordRequest(
        Long userId,
        String oldPassword,
        String newPassword) {

}
