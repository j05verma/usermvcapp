package com.jsp.usermvcapp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jsp.usermvcapp.dao.UserDao;
import com.jsp.usermvcapp.dto.User;
@Service
public class UserService {
	@Autowired
	private UserDao userDao;

	public User saveUser(User user) {
		return userDao.saveUser(user);
	}

	public User updateUser(User user) {
		return userDao.updateUser(user);
	}

	public User getUser(int id) {
		return userDao.getUser(id);
	}

	public boolean deleteUser(int id) {
		return userDao.deleteUser(id);
	}

	public User verifyUser(long phone, String password) {
		return userDao.verifyUser(phone, password);
	}

	public List<User> getAllUsers() {
		return userDao.getAllUsers();
	}

}
