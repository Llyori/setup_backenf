package com.setup.backend.repositories;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.setup.backend.beans.User;

import jakarta.transaction.Transactional;

@Repository
public interface UserRepository extends JpaRepository<User, Long> {

    Optional<User> findByEmail(String email);

    boolean existsByEmail(String username);

    @Query("SELECT u FROM User u WHERE u.id = ?1")
    public User findByIdOrNull(Long id);

    @Transactional
    @Modifying
    @Query("UPDATE User u SET u.status = :status  WHERE u.id = :id")
    void updateUserStatus(@Param("id") Long id, @Param("status") short status);
}
