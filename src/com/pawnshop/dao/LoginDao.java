package com.pawnshop.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.pawnshop.po.User;

public interface LoginDao {

	public User findUser(@Param("username") String username,
			             @Param("password")  String password);
	public void regist(@Param("username") String username,
			             @Param("password")  String password);
	public List<User> checkRepeat(@Param("username") String username);
}
