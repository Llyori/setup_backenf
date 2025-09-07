package com.setup.backend.beans;

import java.io.Serializable;

import com.setup.backend.enums.TokenType;
import com.setup.backend.models.TokenDTO;

import jakarta.persistence.Entity;
import jakarta.persistence.EnumType;
import jakarta.persistence.Enumerated;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

@Data
@EqualsAndHashCode(callSuper = true)
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Entity
public class Token extends EntityBase implements Serializable {
    private String tk;

    @Enumerated(EnumType.STRING)
    private TokenType tokenType;

    private boolean expired;

    private boolean revoked;

    @ManyToOne
    @JoinColumn(name = "user_id")
    private User user;

    public Token(TokenDTO tokenDTO) {
        this.id = tokenDTO.getId();
        this.createdOn = tokenDTO.getCreatedOn();
        this.lastUpdateOn = tokenDTO.getLastUpdateOn();

        this.tokenType = tokenDTO.getTokenType();
        this.expired = tokenDTO.isExpired();
        this.revoked = tokenDTO.isRevoked();

        if (tokenDTO.getUser() != null)
            this.user = new User(tokenDTO.getUser());
    }

    public static TokenDTO fromToken(Token token) {
        return new TokenDTO(token);
    }
}
