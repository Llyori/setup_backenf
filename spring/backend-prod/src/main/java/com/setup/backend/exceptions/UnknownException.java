package com.setup.backend.exceptions;

import lombok.Getter;

@Getter
public class UnknownException extends Exception {

    private final String code;

    public UnknownException(String message) {
        super(message);
        this.code = "UNKNOWN_ERROR";
    }

    public UnknownException(String message, Throwable cause) {
        super(message, cause);
        this.code = "UNKNOWN_ERROR";
    }

    public UnknownException(String code, String message, Throwable cause) {
        super(message, cause);
        this.code = code;
    }
}
