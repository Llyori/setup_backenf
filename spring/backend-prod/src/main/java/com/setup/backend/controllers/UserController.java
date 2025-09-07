package com.setup.backend.controllers;

import java.io.IOException;
import java.util.List;
import java.util.Set;

import javax.validation.Valid;

import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.setup.backend.beans.User;
import com.setup.backend.exceptions.KnownException;
import com.setup.backend.exceptions.UnknownException;
import com.setup.backend.models.UserDTO;
import com.setup.backend.models.UserListWrapperDto;
import com.setup.backend.records.CacheToken;
import com.setup.backend.records.ConfirmResetPasswordRequest;
import com.setup.backend.records.LockOrBanAccountRequest;
import com.setup.backend.records.UpdateUserPasswordRequest;
import com.setup.backend.services.UserService;
import com.setup.backend.utils.Constants;
import com.setup.backend.utils.UserMapper;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.tags.Tag;

@RestController
@RequestMapping("/users")
@Tag(name = "User Controller Management.")
@CrossOrigin("*")
public class UserController {
    private final UserService userService;

    public UserController(UserService userService) {
        this.userService = userService;
    }

    @PostMapping(value = "/create", produces = MediaType.APPLICATION_JSON_VALUE, consumes = MediaType.APPLICATION_JSON_VALUE)
    public ResponseEntity<UserDTO> create(@RequestBody @Valid UserDTO registerRequest) throws KnownException {
        return new ResponseEntity<>(User.fromUser(userService.create(registerRequest)), HttpStatus.CREATED);
    }

    @Operation(description = "This endpoind is using for retrieving a list of activated or deactivated user from the database.", summary = "Get all activated or deactivated users", responses = {
            @ApiResponse(description = "Retrieving user list from the database", responseCode = "200", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = UserListWrapperDto.class))
            }),
            @ApiResponse(responseCode = "403", description = "Forbidden", content = @Content(mediaType = "application/json")),
            @ApiResponse(responseCode = "401", description = "Unauthorized", content = @Content(mediaType = "application/json")),
            @ApiResponse(responseCode = "500", description = "internal server error", content = @Content(mediaType = "application/json"))
    })
    @GetMapping(value = "/getAllUser")
    public ResponseEntity<List<UserDTO>> getAllUser() {
        return new ResponseEntity<>(UserMapper.mapToDtoList(userService.getAllUser()), HttpStatus.OK);
    }

    @GetMapping(value = "/getUserRolesList/{userId}", produces = MediaType.APPLICATION_JSON_VALUE)
    public ResponseEntity<Set<String>> getUserRolesList(@PathVariable("userId") Long userId)
            throws KnownException {
        return new ResponseEntity<>(userService.getUserRolesList(userId), HttpStatus.OK);
    }

    @PostMapping(value = "/lock-user-account")
    public ResponseEntity<UserDTO> lockAccount(@RequestBody LockOrBanAccountRequest lockAccountRequest)
            throws KnownException, IOException {
        return new ResponseEntity<>(userService.lockUserAccount(lockAccountRequest), HttpStatus.OK);
    }

    @PutMapping("/active-user-status")
    public ResponseEntity<Boolean> updateUserStatus(@RequestBody User user) throws KnownException {
        return new ResponseEntity<>(userService.updateUserStatus(user), HttpStatus.OK);
    }

    @PutMapping("/update")
    public ResponseEntity<UserDTO> update(@RequestBody @Valid UserDTO usr) throws KnownException {
        if (usr.getId() == null || (usr.getId() != null && userService.findById(usr.getId()) == null)) {
            throw new KnownException(Constants.USER_NOT_FOUND_CODE, Constants.USER_NOT_FOUND);
        }
        UserDTO userUpdated = userService.update(User.toUser(usr));
        return new ResponseEntity<>(userUpdated, HttpStatus.OK);
    }

    @PutMapping("/update-user-password")
    public ResponseEntity<UserDTO> updatePassword(@RequestBody @Valid UpdateUserPasswordRequest request)
            throws KnownException {
        if (request.userId() == null
                || (request.userId() != null && userService.findById(request.userId()) == null)) {
            throw new KnownException(Constants.USER_NOT_FOUND_CODE, Constants.USER_NOT_FOUND);
        }
        UserDTO userUpdated = userService.updateUserPassword(request);
        return new ResponseEntity<>(userUpdated, HttpStatus.OK);
    }

    @PostMapping("/reset-user-password")
    public ResponseEntity<CacheToken> resetUserPassword(@RequestParam String email)
            throws KnownException, UnknownException {
        return new ResponseEntity<>(userService.generateResetPasswordLink(email), HttpStatus.OK);
    }

    @PostMapping("/confirm-reset-password")
    public ResponseEntity<UserDTO> confirmResetUserPassword(@RequestBody ConfirmResetPasswordRequest request)
            throws KnownException {

        return new ResponseEntity<>(userService.confirmResetPassword(request), HttpStatus.OK);
    }

    @GetMapping(value = "/findById/{userId}", produces = MediaType.APPLICATION_JSON_VALUE)
    public ResponseEntity<UserDTO> getUserById(@PathVariable("userId") Long userId) {
        return new ResponseEntity<>(userService.getUserById(userId), HttpStatus.OK);
    }

    @PutMapping("/update-profil")
    public ResponseEntity<UserDTO> updateUserProfil(@RequestBody @Valid UserDTO usr) throws KnownException {
        if (usr.getId() == null || (usr.getId() != null && userService.findById(usr.getId()) == null)) {
            throw new KnownException(Constants.USER_NOT_FOUND_CODE, Constants.USER_NOT_FOUND);
        }
        UserDTO userUpdated = userService.updateUserProfil(User.toUser(usr));
        return new ResponseEntity<>(userUpdated, HttpStatus.OK);
    }

    @Operation(description = "This endpoind is using for delete user from the database.", summary = "Change status from the user into database and return this user.", responses = {
            @ApiResponse(description = "User delete from the database", responseCode = "200", content = {
                    @Content(mediaType = "application/json", schema = @Schema(implementation = UserListWrapperDto.class))
            }),
            @ApiResponse(responseCode = "403", description = "Forbidden", content = @Content(mediaType = "application/json")),
            @ApiResponse(responseCode = "401", description = "Unauthorized", content = @Content(mediaType = "application/json")),
            @ApiResponse(responseCode = "500", description = "internal server error", content = @Content(mediaType = "application/json"))
    })
    @GetMapping(value = "/deleteUser/{idUser}")
    public ResponseEntity<UserDTO> deleteUser(@PathVariable("idUser") Long idUser) throws KnownException {
        User mainDeleted = userService.deleteUser(idUser);
        if (mainDeleted != null) {
            return new ResponseEntity<>(User.fromUser(mainDeleted), HttpStatus.OK);
        } else {
            throw new KnownException(Constants.USER_NOT_FOUND_CODE, Constants.USER_NOT_FOUND);
        }
    }

}
