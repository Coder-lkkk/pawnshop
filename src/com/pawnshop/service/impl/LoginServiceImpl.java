package com.pawnshop.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.pawnshop.dao.LoginDao;
import com.pawnshop.po.User;
import com.pawnshop.service.LoginService;

@Service("loginService")
@Transactional

public class LoginServiceImpl implements LoginService {
	@Autowired
	private LoginDao loginDao;
	@Override
	public User findUser(String username, String password) {
		return this.loginDao.findUser(username, password);
	}
	@Override
	public void regist(String username, String password) {
		// TODO Auto-generated method stub
		this.loginDao.regist(username, password);
	}
	@Override
	public List<User> checkRepeat(String username) {
		// TODO Auto-generated method stub
		return loginDao.checkRepeat(username);
	}
}