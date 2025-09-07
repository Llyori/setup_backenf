package com.setup.backend.services.impl;

import org.springframework.stereotype.Service;

import com.setup.backend.beans.ActivationHash;
import com.setup.backend.repositories.ActivationHashRepository;
import com.setup.backend.services.ActivationHashService;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class ActivationServiceImpl implements ActivationHashService {
    private final ActivationHashRepository activationHashRepository;

    @Override
    public ActivationHash findByHash(String hash) {
        return activationHashRepository.findByHash(hash);
    }
}
