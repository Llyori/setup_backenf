package com.setup.backend.exceptions;

import lombok.Getter;

@Getter
public class KnownException extends Exception {
    private final String code;

    public KnownException(String code) {
        this.code = code;
    }

    public KnownException(String code, String message) {
        super(message);
        this.code = code;
    }
}
