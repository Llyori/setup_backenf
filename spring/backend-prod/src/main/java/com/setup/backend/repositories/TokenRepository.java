package com.setup.backend.repositories;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.setup.backend.beans.Token;

@Repository
public interface TokenRepository extends JpaRepository<Token, Long> {

    @Query("SELECT t FROM Token t WHERE t.user.id = :userId AND (t.expired = false OR t.revoked = false)")
    List<Token> findAllValidTokensByUserId(@Param("userId") Long userId);

    Optional<Token> findByTk(String token);

    @Query("SELECT t FROM Token t WHERE t.id = ?1")
    public Token findByIdOrNull(Long id);
}
