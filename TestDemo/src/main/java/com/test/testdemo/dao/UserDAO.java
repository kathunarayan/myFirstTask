package com.test.testdemo.dao;

import java.util.List;

import com.test.testdemo.model.User;

public interface UserDAO {
	public void saveOrUpdate(User user);

	public void delete(int id);

	public List<User> list();

	public User getById(String userName);
	
	public boolean logIn(User user);
}
