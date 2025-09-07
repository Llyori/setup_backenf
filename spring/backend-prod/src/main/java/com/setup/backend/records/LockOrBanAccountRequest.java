package com.setup.backend.records;

public record LockOrBanAccountRequest(
        Long userId,
        String comment) {
}
