package com.example.demo.service;

import com.example.demo.model.User;

import java.util.List;
import java.util.Optional;

public interface UserService {

    List <User> getAllUsers();
    Optional <User> getUserById(Long id);
    User saveUser(User user);
    User updateUser(Long id, User user);
    void deleteUser(Long id);
    List<User> findByName(String name);
    List<User> findByEmail(String email);
    boolean existByEmail(String email);
    
}
