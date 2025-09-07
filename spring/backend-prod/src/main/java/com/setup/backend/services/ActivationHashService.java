package com.setup.backend.services;

import com.setup.backend.beans.ActivationHash;

public interface ActivationHashService {
    public ActivationHash findByHash(String hash);

}
