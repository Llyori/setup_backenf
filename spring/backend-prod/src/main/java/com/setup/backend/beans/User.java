package com.setup.backend.beans;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

import org.springframework.core.ParameterizedTypeReference;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonProperty.Access;
import com.setup.backend.enums.Permission;
import com.setup.backend.enums.Role;
import com.setup.backend.models.TokenDTO;
import com.setup.backend.models.UserDTO;
import com.setup.backend.utils.Constants;
import com.setup.backend.utils.JsonSerializer;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Lob;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import jakarta.persistence.Transient;
import jakarta.persistence.UniqueConstraint;
import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Data
@EqualsAndHashCode(callSuper = true)
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "_user", uniqueConstraints = { @UniqueConstraint(columnNames = { "email" }) })
public class User extends EntityBase implements UserDetails {

    @Column(name = "first_name", nullable = false)
    private String firstName;

    @Column(name = "last_name", nullable = false)
    private String lastName;

    @Column(name = "email", nullable = false)
    private String email;

    @Column(name = "phone_number", nullable = false)
    private String phone;

    @Column(name = "password", nullable = false)
    private String password;

    @Lob
    @Column(name = "roles")
    @Getter(AccessLevel.NONE)
    @Setter(AccessLevel.NONE)
    private String rolesString;

    @Transient
    @Getter(AccessLevel.NONE)
    @Setter(AccessLevel.NONE)
    private List<Role> roles;

    @OneToMany(mappedBy = "user")
    @JsonIgnore
    private List<Token> tokens;

    public User(Long id) {
        super(id);
    }

    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        if (roles != null) {
            return roles.stream()
                    .flatMap(role -> role.getAuthorities().stream())
                    .distinct()
                    .toList();
        }
        return new ArrayList<>();
    }

    @JsonProperty(access = Access.WRITE_ONLY)
    public Set<Permission> getPermissions() {
        Set<Permission> permissions = Set.of();
        if (roles != null && !roles.isEmpty())
            permissions = roles.stream()
                    .flatMap(role -> role.getPermissions().stream())
                    .distinct()
                    .collect(Collectors.toSet());
        return permissions;
    }

    @Override
    public String getUsername() {
        return email;
    }

    @Override
    public boolean isAccountNonExpired() {
        return true;
    }

    @Override
    public boolean isAccountNonLocked() {
        return this.getStatus() != Constants.STATE_LOCKED;
    }

    @Override
    public boolean isCredentialsNonExpired() {
        return true;
    }

    @Override
    public boolean isEnabled() {
        return this.getStatus() == Constants.STATE_ACTIVATED;

    }

    @Override
    public String getPassword() {
        return this.password;
    }

    public User(UserDTO userDTO) {
        this.id = userDTO.getId();
        this.createdOn = userDTO.getCreatedOn();
        this.lastUpdateOn = userDTO.getLastUpdateOn();
        this.status = userDTO.getStatus();

        this.firstName = userDTO.getFirstName();
        this.lastName = userDTO.getLastName();
        this.email = userDTO.getEmail();
        this.phone = userDTO.getPhone();
        this.password = userDTO.getPassword();
        this.setRoles(userDTO.getRoles());
    }

    public List<TokenDTO> getTokensDTO() {
        return this.tokens != null
                ? this.tokens.stream().map(TokenDTO::new).toList()
                : new ArrayList<>();
    }

    public static UserDTO fromUser(User user) {
        return new UserDTO(user);
    }

    public static User toUser(UserDTO userDTO) {
        return new User(userDTO);
    }

    public String getRolesString() {
        this.rolesObjectFromJSON();
        return rolesString;
    }

    public void setRolesString(String rolesString) {
        this.rolesString = rolesString;
        this.rolesObjectFromJSON();
    }

    public List<Role> getRoles() {
        this.rolesObjectFromJSON();
        return this.roles;
    }

    public void setRoles(List<Role> roles) {
        this.roles = roles;
        this.rolesJSONFromObject();
    }

    private void rolesObjectFromJSON() {
        if (this.rolesString != null && !this.rolesString.isBlank())
            this.roles = JsonSerializer.fromJson(this.rolesString, new ParameterizedTypeReference<List<Role>>() {
            });
    }

    private void rolesJSONFromObject() {
        this.rolesString = JsonSerializer.toJson(this.roles);
    }
}
