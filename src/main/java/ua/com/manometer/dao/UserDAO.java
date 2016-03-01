package ua.com.manometer.dao;

import ua.com.manometer.model.User;

import java.util.List;

public interface UserDAO {

    void addUser(User user);

    List<User> listUser();

    List<User> listUser(Integer page, Integer count);

    void removeUser(Integer id);

    User getUser(Integer userId);

    User findByLogin(String login);

    Long getUsersCount();


}
