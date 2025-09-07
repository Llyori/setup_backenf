package com.setup.backend.configs.swagger;

import io.swagger.v3.oas.annotations.OpenAPIDefinition;
import io.swagger.v3.oas.annotations.enums.SecuritySchemeIn;
import io.swagger.v3.oas.annotations.enums.SecuritySchemeType;
import io.swagger.v3.oas.annotations.info.Contact;
import io.swagger.v3.oas.annotations.info.Info;
import io.swagger.v3.oas.annotations.info.License;
import io.swagger.v3.oas.annotations.security.SecurityRequirement;
import io.swagger.v3.oas.annotations.security.SecurityScheme;
import io.swagger.v3.oas.annotations.servers.Server;

@OpenAPIDefinition(info = @Info(contact = @Contact(name = "Soft-Developement", email = "arleonzemtsop@gmail.com", url = "https://soft-development.app"), description = "OpenAPI Documentation for mecenat app backend", title = "OpenAPI Specification", license = @License(url = "https://something.com", name = "MIT"), version = "1.0"), servers = {
        @Server(url = "http://localhost:8075", description = "Local Env"),
        @Server(url = "https://soft-development.app", description = "Prod Env")
}, security = {
        @SecurityRequirement(name = "bearerAuth")
})
@SecurityScheme(name = "bearerAuth", type = SecuritySchemeType.HTTP, in = SecuritySchemeIn.HEADER, description = "JWT auth description", scheme = "bearer", bearerFormat = "JWT")
public class OpenApiConfig {
}
