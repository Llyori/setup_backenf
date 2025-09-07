package com.setup.backend.services.impl;

import java.io.IOException;

import org.springframework.stereotype.Service;

import com.setup.backend.beans.User;
import com.setup.backend.exceptions.KnownException;
import com.setup.backend.services.EmailService;

@Service
public class EmailServiceImpl implements EmailService {

    @Override
    public void sendActivationEmail(User user, String activationHash) throws KnownException {
        throw new UnsupportedOperationException("Unimplemented method 'sendActivationEmail'");
    }

    @Override
    public void sendLockedEmail(String recipientEmail, String userName, String lockedCause)
            throws KnownException, IOException {
        throw new UnsupportedOperationException("Unimplemented method 'sendLockedEmail'");
    }

    @Override
    public void sendMailToResetPassword(String recipientEmail, String userName, String resetToken)
            throws KnownException {
        throw new UnsupportedOperationException("Unimplemented method 'sendMailToResetPassword'");
    }

}
