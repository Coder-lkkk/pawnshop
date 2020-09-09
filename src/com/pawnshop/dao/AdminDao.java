package com.pawnshop.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.pawnshop.po.Jewellery;
import com.pawnshop.po.User;

public interface AdminDao {

	public List<Jewellery> findJList(@Param("page")int page,
									@Param("limit")int limit);
	
	public List<Jewellery> findReviewJList(@Param("page")int page,
			@Param("limit")int limit);
	
	public Jewellery findJInfo(int jid);

	public void changeJstate(@Param("state")String state,@Param("jid")int jid);
	
	public List<User> findUList(@Param("page")int page,
			@Param("limit")int limit);
	
	public User findUInfo(int uid);
	
	public void updateUser(@Param("user") User user);
}

