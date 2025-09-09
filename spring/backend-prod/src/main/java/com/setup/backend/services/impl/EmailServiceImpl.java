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
        final int a = 1;
    }

    @Override
    public void sendLockedEmail(String recipientEmail, String userName, String lockedCause)
            throws KnownException, IOException {
        final int a = 1;

    }

    @Override
    public void sendMailToResetPassword(String recipientEmail, String userName, String resetToken)
            throws KnownException {
        final int a = 1;

    }

}
