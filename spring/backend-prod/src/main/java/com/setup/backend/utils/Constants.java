package com.setup.backend.utils;

public class Constants {

    Constants() {
    }

    public static final short STATE_ACTIVATED = 0;
    public static final short STATE_DELETED = 1;
    public static final short STATE_DEACTIVATED = 2;
    public static final short STATE_LOCKED = 3;

    // message d'erreurs

    public static final String EMAIL_ALREADY_USED_CODE = "600";
    public static final String EMAIL_ALREADY_USED = "Email already used";

    public static final String USER_NOT_FOUND_CODE = "601";
    public static final String USER_NOT_FOUND = "User not found";

    public static final String USER_ALREADY_DELETED_CODE = "602";
    public static final String USER_ALREADY_DELETED = "User already deleted";

    public static final String USER_ALREADY_DEACTIVATED_CODE = "603";
    public static final String USER_ALREADY_DEACTIVATED = "User already deactivated";

    public static final String OLD_PASSWORD_NOT_MATCH_CODE = "604";
    public static final String OLD_PASSWORD_NOT_MATCH = "Old password do not match";

    public static final String USER_ACCOUNT_ALREADY_LOCKED_CODE = "605";
    public static final String USER_ACCOUNT_ALREADY_LOCKED = "User Account already locked.";

    public static final String USER_NOT_AUTHORIZED_CODE = "606";
    public static final String USER_NOT_AUTHORIZED = "You are not authorize to perform this action.";

    public static final String INVALID_USER_EMAIL_CODE = "607";
    public static final String INVALID_USER_EMAIL = "No user is associated with this email address";

    public static final String RESET_TOKEN_EXPIRED_CODE = "608";
    public static final String RESET_TOKEN_EXPIRED = "The reset token has expired";

    public static final String EMPTY_CACHE_CODE = "609";
    public static final String EMPTY_CACHE = "Cache is Empty";

    public static final String ACCOUNT_ACTIVATION_LINK_NOT_FOUND_CODE = "610";
    public static final String ACCOUNT_ACTIVATION_LINK_NOT_FOUND = "Le lien d'activation de compte que vous avez fourni n'existe pas.";

    public static final String ACCOUNT_ACTIVATION_LINK_EXPIRED_CODE = "636";
    public static final String ACCOUNT_ACTIVATION_LINK_EXPIRED = "Le lien d'activation de votre compte est expiré; veuillez renvoyer de nouveau.";

}
