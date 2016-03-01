package ua.com.manometer.service;



import ua.com.manometer.model.User;

import java.util.List;

public interface UserService {

	 User getUser(Integer userId);

     void addUser(User user);

	 List<User> listUser();

	 void removeUser(Integer id);

     User findByLogin(String login);

	Long getUsersCount();

	List<User> listUser(Integer page, Integer count);
}
