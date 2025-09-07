package com.setup.backend.models;

import java.io.Serializable;
import java.util.List;

public class UserListWrapperDto implements Serializable {

    private List<UserDTO> userDtos;

    public List<UserDTO> getUserDtos() {
        return userDtos;
    }

    public void setUserDtos(List<UserDTO> userDtos) {
        this.userDtos = userDtos;
    }

    public UserListWrapperDto() {
    }

    public UserListWrapperDto(List<UserDTO> userDtos) {
        this.userDtos = userDtos;
    }

}
