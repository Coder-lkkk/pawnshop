package com.pawnshop.service;

import java.util.List;

import com.pawnshop.po.User;


public interface LoginService {

	public User findUser(String username,String password);
	public void regist(String username,String password);
	public List<User> checkRepeat(String username);
}
