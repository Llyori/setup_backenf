package com.setup.backend.enums;

import lombok.Getter;
import lombok.RequiredArgsConstructor;

@Getter
@RequiredArgsConstructor
public enum Permission {

    ADMIN_READ("admin:read"),
    ADMIN_UPDATE("admin:update"),
    ADMIN_CREATE("admin:create"),
    ADMIN_DELETE("admin:delete"),

    ENTERPRISE_READ("enterprise:read"),
    ENTERPRISE_UPDATE("enterprise:update"),
    ENTERPRISE_CREATE("enterprise:create"),
    ENTERPRISE_DELETE("enterprise:delete"),

    ASSOCIATION_READ("association:read"),
    ASSOCIATION_UPDATE("association:update"),
    ASSOCIATION_CREATE("association:create"),
    ASSOCIATION_DELETE("association:delete");

    private final String permite;
}
