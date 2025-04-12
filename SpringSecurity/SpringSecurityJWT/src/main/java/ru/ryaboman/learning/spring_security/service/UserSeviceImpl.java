package ru.ryaboman.learning.spring_security.service;

import lombok.RequiredArgsConstructor;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Service;
import ru.ryaboman.learning.spring_security.config.MyUserDetails;
import ru.ryaboman.learning.spring_security.entity.User;

@Service
@RequiredArgsConstructor
public class UserSeviceImpl implements UserSevice {

    private final JWTService jwtService;

    private final AuthenticationManager authenticationManager;

    @Override
    public String verify(User user) {
        Authentication authentication =
                authenticationManager.authenticate(new UsernamePasswordAuthenticationToken(user.getUsername(), user.getPassword()));
        if(authentication.isAuthenticated()){
            return jwtService.generateToken(new MyUserDetails(user));
        }
        return "fail";
    }
}
