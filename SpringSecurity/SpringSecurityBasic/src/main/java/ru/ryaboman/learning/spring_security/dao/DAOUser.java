package ru.ryaboman.learning.spring_security.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import ru.ryaboman.learning.spring_security.entity.User;

import java.util.Optional;

@Repository
public interface DAOUser extends JpaRepository<User, Long> {
    Optional<User> findByUsername(String username);
}