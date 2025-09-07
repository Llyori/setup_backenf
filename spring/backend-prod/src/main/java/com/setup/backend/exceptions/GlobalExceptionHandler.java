package com.setup.backend.exceptions;

import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;
import org.springframework.http.ResponseEntity;
import org.springframework.http.HttpStatus;
import org.springframework.web.context.request.WebRequest;

import com.setup.backend.utils.Constants;

import org.springframework.web.bind.MethodArgumentNotValidException;
import org.springframework.validation.FieldError;
import org.springframework.dao.DataIntegrityViolationException;
import lombok.extern.slf4j.Slf4j;
import java.time.LocalDateTime;
import java.io.PrintWriter;
import java.io.StringWriter;

@RestControllerAdvice
@Slf4j
public class GlobalExceptionHandler {

    // Gestion des erreurs connues
    @ExceptionHandler(KnownException.class)
    public ResponseEntity<ErrorResponse> handleKnownException(
            KnownException ex, WebRequest request) {

        log.warn("Erreur connue: {} - {}", ex.getCode(), ex.getMessage());

        ErrorResponse errorResponse = ErrorResponse.builder()
                .code(ex.getCode())
                .message(ex.getMessage())
                .timestamp(LocalDateTime.now())
                .path(getPath(request))
                .build();

        // Tu peux mapper tes codes à des statuts HTTP spécifiques
        HttpStatus httpStatus = mapCodeToHttpStatus(ex.getCode());

        return ResponseEntity.status(httpStatus).body(errorResponse);
    }

    // Gestion des erreurs inconnues
    @ExceptionHandler(UnknownException.class)
    public ResponseEntity<ErrorResponse> handleUnknownException(
            UnknownException ex, WebRequest request) {

        log.error("Erreur inconnue: {} - {}", ex.getCode(), ex.getMessage(), ex);

        ErrorResponse errorResponse = ErrorResponse.builder()
                .code(ex.getCode())
                .message(ex.getMessage())
                .timestamp(LocalDateTime.now())
                .path(getPath(request))
                .stackTrace(getStackTrace(ex))
                .build();

        return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(errorResponse);
    }

    // Gestion des erreurs de validation
    @ExceptionHandler(MethodArgumentNotValidException.class)
    public ResponseEntity<ErrorResponse> handleValidationErrors(
            MethodArgumentNotValidException ex, WebRequest request) {

        StringBuilder message = new StringBuilder("Erreurs de validation: ");
        for (FieldError error : ex.getBindingResult().getFieldErrors()) {
            message.append(error.getField()).append(" - ").append(error.getDefaultMessage()).append("; ");
        }

        ErrorResponse errorResponse = ErrorResponse.builder()
                .code("VALIDATION_ERROR")
                .message(message.toString())
                .timestamp(LocalDateTime.now())
                .path(getPath(request))
                .build();

        return ResponseEntity.status(HttpStatus.BAD_REQUEST).body(errorResponse);
    }

    // Gestion des erreurs de base de données
    @ExceptionHandler(DataIntegrityViolationException.class)
    public ResponseEntity<ErrorResponse> handleDataIntegrityViolation(
            DataIntegrityViolationException ex, WebRequest request) {

        log.error("Erreur d'intégrité des données", ex);

        ErrorResponse errorResponse = ErrorResponse.builder()
                .code("DATA_INTEGRITY_ERROR")
                .message("Violation de contrainte de données")
                .timestamp(LocalDateTime.now())
                .path(getPath(request))
                .build();

        return ResponseEntity.status(HttpStatus.CONFLICT).body(errorResponse);
    }

    // Catch-all pour toutes les autres exceptions
    @ExceptionHandler(Exception.class)
    public ResponseEntity<ErrorResponse> handleGenericException(
            Exception ex, WebRequest request) {

        log.error("Erreur non gérée", ex);

        ErrorResponse errorResponse = ErrorResponse.builder()
                .code("INTERNAL_ERROR")
                .message("Une erreur interne s'est produite")
                .timestamp(LocalDateTime.now())
                .path(getPath(request))
                .stackTrace(getStackTrace(ex))
                .build();

        return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(errorResponse);
    }

    // Méthodes utilitaires
    private String getPath(WebRequest request) {
        return request.getDescription(false).replace("uri=", "");
    }

    private String getStackTrace(Throwable throwable) {
        StringWriter sw = new StringWriter();
        PrintWriter pw = new PrintWriter(sw);
        throwable.printStackTrace(pw);
        return sw.toString();
    }

    // Mapping de tes codes vers les statuts HTTP
    private HttpStatus mapCodeToHttpStatus(String code) {
        return switch (code) {
            case "USER_NOT_FOUND", "RESOURCE_NOT_FOUND", Constants.USER_NOT_FOUND_CODE -> HttpStatus.NOT_FOUND;
            case "INVALID_INPUT", "MISSING_PARAMETER", Constants.OLD_PASSWORD_NOT_MATCH_CODE,
                    Constants.INVALID_USER_EMAIL_CODE, Constants.RESET_TOKEN_EXPIRED_CODE, Constants.EMPTY_CACHE_CODE,
                    Constants.ACCOUNT_ACTIVATION_LINK_NOT_FOUND_CODE, Constants.ACCOUNT_ACTIVATION_LINK_EXPIRED_CODE ->
                HttpStatus.BAD_REQUEST;
            case "UNAUTHORIZED_ACCESS" -> HttpStatus.UNAUTHORIZED;
            case "ACCESS_DENIED", Constants.USER_NOT_AUTHORIZED_CODE -> HttpStatus.FORBIDDEN;
            case "DUPLICATE_ENTRY", Constants.EMAIL_ALREADY_USED_CODE, Constants.USER_ALREADY_DELETED_CODE,
                    Constants.USER_ALREADY_DEACTIVATED_CODE, Constants.USER_ACCOUNT_ALREADY_LOCKED_CODE ->
                HttpStatus.CONFLICT;
            default -> HttpStatus.BAD_REQUEST;
        };
    }
}
