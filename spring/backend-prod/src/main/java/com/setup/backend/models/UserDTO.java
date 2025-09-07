package com.setup.backend.models;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

import java.io.Serializable;

import java.util.List;
import java.util.Set;

import com.setup.backend.beans.User;
import com.setup.backend.enums.Permission;
import com.setup.backend.enums.Role;

import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;

@Data
@EqualsAndHashCode(callSuper = true)
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class UserDTO extends EntityBaseDTO implements Serializable {
    private static final long serialVersionUID = 1L;

    @NotBlank(message = "First name is mandatory")
    private String firstName;

    @NotBlank(message = "Last name is mandatory")
    private String lastName;

    @NotBlank(message = "Email is mandatory")
    @Email(message = "Invalid email address")
    private String email;

    @NotBlank(message = "Phone number is mandatory")
    private String phone;

    @NotBlank(message = "Password is mandatory")
    private String password;

    private String rolesString;
    private List<Role> roles;
    private Set<Permission> permissions;

    public UserDTO(User user) {
        this.id = user.getId();
        this.createdOn = user.getCreatedOn();
        this.lastUpdateOn = user.getLastUpdateOn();
        this.firstName = user.getFirstName();
        this.lastName = user.getLastName();
        this.email = user.getEmail();
        this.phone = user.getPhone();
        this.password = user.getPassword();
        this.rolesString = user.getRolesString();
        this.roles = user.getRoles();
        this.permissions = user.getPermissions();
    }

    public UserDTO(@NotBlank(message = "First name is mandatory") String firstName,
            @NotBlank(message = "Last name is mandatory") String lastName,
            @NotBlank(message = "Email is mandatory") @Email(message = "Invalid email address") String email,
            @NotBlank(message = "Phone number is mandatory") String phone,
            @NotBlank(message = "Password is mandatory") String password) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.email = email;
        this.phone = phone;
        this.password = password;
    }
}
