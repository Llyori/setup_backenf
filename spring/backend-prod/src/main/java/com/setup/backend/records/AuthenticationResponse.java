package com.setup.backend.records;

import java.util.Date;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.setup.backend.models.UserDTO;

public record AuthenticationResponse(
        @JsonProperty("accessToken") String accessToken,
        @JsonProperty("refreshToken") String refreshToken,
        @JsonProperty("user") UserDTO user,
        @JsonProperty("tokenExpiredAt") Date tokenExpiredAt) {
}
