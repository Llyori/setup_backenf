package com.setup.backend.utils;

import java.util.List;

import org.springframework.core.ParameterizedTypeReference;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.authority.SimpleGrantedAuthority;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.SerializationFeature;
import com.fasterxml.jackson.datatype.jsr310.JavaTimeModule;
import com.setup.backend.beans.User;
import com.setup.backend.enums.Role;

public class TestsUtils {

    private static final ObjectMapper mapper = new ObjectMapper()
            .registerModule(new JavaTimeModule())
            .disable(SerializationFeature.WRITE_DATES_AS_TIMESTAMPS);

    public static <T> T fromJsonString(final String str, Class<T> targetClass) {
        try {
            return mapper.readValue(str, targetClass);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    public static <T> T fromJsonString(final String str, TypeReference<T> targetClass) {
        try {
            return mapper.readValue(str, targetClass);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    public static <T> T fromJsonString(final String str, ParameterizedTypeReference<T> targetClass) {
        try {
            JavaType javaType = mapper.getTypeFactory().constructType(targetClass.getType());
            return mapper.readValue(str, javaType);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    public static User getRandomUser(String userName, String email, String password) {
        User user = new User();
        user.setFirstName(userName);
        user.setEmail(email);
        user.setPassword(password);
        return user;
    }

    public static User getUser(Long userId, String username, String firstName, String lastName, String email,
            String password, List<Role> roles) {
        User user = getRandomUser(username, email, password);
        user.setId(userId);
        user.setFirstName(firstName);
        user.setLastName(lastName);
        user.setRoles(roles);
        return user;
    }

    public static User getUser(Long userId, String username, String firstName, String lastName, String email,
            String password) {
        User user = getRandomUser(username, email, password);
        user.setId(userId);
        user.setFirstName(firstName);
        user.setLastName(lastName);
        return user;
    }

    public static Authentication getAuthentication(User principal, List<SimpleGrantedAuthority> updatedAuthorities) {
        return new UsernamePasswordAuthenticationToken(
                principal,
                null,
                updatedAuthorities);
    }

    public static String asJsonString(final Object obj) {
        try {
            return mapper.writeValueAsString(obj);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    public static String changeDateFormat(String stringDate) {
        // i am changing the date in the format 05/09/2024 to the format 2024-09-05
        stringDate.split("/");
        String day = stringDate.split("/")[0];
        String month = stringDate.split("/")[1];
        String year = stringDate.split("/")[2];
        return year + "-" + month + "-" + day;
    }
}