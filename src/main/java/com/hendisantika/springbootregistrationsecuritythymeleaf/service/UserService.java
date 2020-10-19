package com.hendisantika.springbootregistrationsecuritythymeleaf.service;

import com.hendisantika.springbootregistrationsecuritythymeleaf.dto.UserRegistrationDto;
import com.hendisantika.springbootregistrationsecuritythymeleaf.entity.User;
import org.springframework.security.core.userdetails.UserDetailsService;

/**
 * Created by IntelliJ IDEA.
 * Project : springboot-registration-security-thymeleaf
 * User: hendisantika
 * Email: hendisantika@gmail.com
 * Telegram : @hendisantika34
 * Date: 20/10/20
 * Time: 06.01
 */
public interface UserService extends UserDetailsService {
    User save(UserRegistrationDto registrationDto);
}