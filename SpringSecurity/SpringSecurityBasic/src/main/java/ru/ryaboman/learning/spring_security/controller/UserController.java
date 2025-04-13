package ru.ryaboman.learning.spring_security.controller;

import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;
import ru.ryaboman.learning.spring_security.entity.User;
import ru.ryaboman.learning.spring_security.service.UserSevice;

@RestController
@RequiredArgsConstructor
public class UserController {

    private final UserSevice userSevice;

    @PostMapping("/login")
    public String login(@RequestBody User user) {
        return userSevice.verify(user);
    }
}
