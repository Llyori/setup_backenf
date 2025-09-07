package com.setup.backend.enums;

import lombok.Getter;
import lombok.RequiredArgsConstructor;
import org.springframework.security.core.authority.SimpleGrantedAuthority;

import java.util.Collections;
import java.util.List;
import java.util.Set;

import static com.setup.backend.enums.Permission.*;

@Getter
@RequiredArgsConstructor
public enum Role {
    USER(Collections.emptySet()),
    ADMIN(
            Set.of(
                    ADMIN_READ,
                    ADMIN_UPDATE,
                    ADMIN_DELETE,
                    ADMIN_CREATE)),
    ENTERPRISE(
            Set.of(
                    ENTERPRISE_READ,
                    ENTERPRISE_UPDATE,
                    ENTERPRISE_DELETE,
                    ENTERPRISE_CREATE)),
    ASSOCIATION(
            Set.of(
                    ASSOCIATION_READ,
                    ASSOCIATION_UPDATE,
                    ASSOCIATION_DELETE,
                    ASSOCIATION_CREATE));

    private final Set<Permission> permissions;

    public List<SimpleGrantedAuthority> getAuthorities() {
        List<SimpleGrantedAuthority> authorities = new java.util.ArrayList<>(
                getPermissions()
                        .stream()
                        .map(permission -> new SimpleGrantedAuthority(
                                permission.getPermite()))
                        .toList());

        authorities.add(new SimpleGrantedAuthority("ROLE_" + this.name()));

        return authorities;
    }

    @Override
    public String toString() {
        return this.name();
    }

    public String asAuthority() {
        return "ROLE_" + this.name();
    }
}
