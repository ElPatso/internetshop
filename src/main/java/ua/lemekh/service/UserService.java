package ua.lemekh.service;

import ua.lemekh.model.User;

import java.util.List;

/**
 * Created by Ostap on 13.06.2017.
 */
public interface UserService {
    void save(User user);

    User findByUsername(String username);

    User findByEmail(String email);

    User updateUser(User user);

    List<User> getUsers();

    void deleteUser(int id);

    User getUserById(int id);

}
