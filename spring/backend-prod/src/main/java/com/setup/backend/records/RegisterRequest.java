package com.setup.backend.records;

import java.util.List;

import com.setup.backend.enums.Role;

public record RegisterRequest(
        String firstName,
        String lastName,
        String email,
        String phone,
        String password,
        List<Role> roles) {
}
