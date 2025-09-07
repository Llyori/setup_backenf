package com.setup.backend.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.setup.backend.beans.ActivationHash;

@Repository
public interface ActivationHashRepository extends JpaRepository<ActivationHash, Long> {
    public ActivationHash findByHash(String hash);

    @Query("SELECT a FROM ActivationHash a WHERE a.id = ?1")
    public ActivationHash findByIdOrNull(Long id);
}
