package com.niit.appleproduct.dao;

import java.util.List;

import com.niit.appleproduct.models.User;

public interface UserDAO {

	public List<User> list();

	public User get(int id);

	public void saveOrUpdate(User user);

	public void delete(User user);

	public boolean isValidUser(String username, String password);

}
