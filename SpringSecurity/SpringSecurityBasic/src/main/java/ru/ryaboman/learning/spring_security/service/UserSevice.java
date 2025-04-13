package ru.ryaboman.learning.spring_security.service;

import ru.ryaboman.learning.spring_security.entity.User;

public interface UserSevice {
    String verify(User user);
}
