package com.setup.backend.records;

import java.util.Date;

public record BuildedToken(
        String token,
        Date expiredAt) {
}
