package com.setup.backend.services;

import java.io.IOException;

import com.setup.backend.beans.User;
import com.setup.backend.exceptions.KnownException;

public interface EmailService {
    public void sendActivationEmail(User user, String activationHash) throws KnownException;

    public void sendLockedEmail(String recipientEmail, String userName, String lockedCause)
            throws KnownException, IOException;

    public void sendMailToResetPassword(String recipientEmail, String userName, String resetToken)
            throws KnownException;

}
