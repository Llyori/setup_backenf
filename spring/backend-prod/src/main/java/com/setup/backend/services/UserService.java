package com.setup.backend.services;

import java.io.IOException;
import java.util.List;
import java.util.Set;

import com.setup.backend.beans.User;
import com.setup.backend.exceptions.KnownException;
import com.setup.backend.exceptions.UnknownException;
import com.setup.backend.models.PageResponse;
import com.setup.backend.models.UserDTO;
import com.setup.backend.records.CacheToken;
import com.setup.backend.records.ConfirmResetPasswordRequest;
import com.setup.backend.records.LockOrBanAccountRequest;
import com.setup.backend.records.UpdateUserPasswordRequest;

public interface UserService {
    public User create(UserDTO usr) throws KnownException;

    public UserDTO update(User usr) throws KnownException;

    public List<User> getAllUser();

    public User deleteUser(Long userId) throws KnownException;

    public User findByEmail(String userMail);

    public Set<String> getUserRolesList(Long userId) throws KnownException;

    public UserDTO updateUserPassword(UpdateUserPasswordRequest updateUserPasswordRequest) throws KnownException;

    public User findById(Long id);

    public Boolean updateUserStatus(User user) throws KnownException;

    public UserDTO lockUserAccount(LockOrBanAccountRequest lockAccountRequest)
            throws KnownException, IOException;

    public CacheToken generateResetPasswordLink(String userEmail) throws KnownException, UnknownException;

    public UserDTO confirmResetPassword(ConfirmResetPasswordRequest request) throws KnownException;

    public UserDTO getUserById(Long userId) throws KnownException;

    public UserDTO updateUserProfil(User usr) throws KnownException;

    public PageResponse<UserDTO> getPaginatedListOfUser(int page, int size, String criteria);

}
