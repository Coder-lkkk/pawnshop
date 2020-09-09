package com.pawnshop.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.pawnshop.po.Jewellery;
import com.pawnshop.po.User;

public interface UserDao {
	public User findUser(@Param("username") String username,
						@Param("password") String password);
	
	public User findUserByName(String username);
	
	public int updateInfo(@Param("user") User user);
	
	public List<Jewellery> findPawnList(@Param("page")int page,
										@Param("limit")int limit);
	
	public int updateJewellery(@Param("jewellery") Jewellery jewellery);
	
	/**
	 * 查询所有的图片
	 * @return
	 */
	List<User> list();
	
	/**
	 * 上传一张图片
	 * @param product
	 * @return
	 */
	Integer save(User user);
}
