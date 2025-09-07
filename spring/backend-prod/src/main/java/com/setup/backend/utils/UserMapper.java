package com.setup.backend.utils;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.stereotype.Service;

import com.setup.backend.beans.User;
import com.setup.backend.models.UserDTO;

@Service
public class UserMapper {

    public enum DATEFORMAT {
        DAYMONTHYEAR,
        MONTHYEAR,
        YEAR
    }

    public static UserDTO map(User user) {
        return new UserDTO(user);
    }

    public static List<UserDTO> mapToDtoList(Page<User> userPage) {
        return userPage.stream().map(UserDTO::new).toList();
    }

    public static List<UserDTO> mapToList(Page<User> userPage) {
        return userPage.stream()
                .map(UserDTO::new)
                .toList();
    }

    public static List<UserDTO> mapToDtoList(List<User> usersList) {
        return usersList.stream().map(UserDTO::new).toList();
    }
}
