package com.pawnshop.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.pawnshop.po.Jewellery;
import com.pawnshop.po.User;

public interface AdminService {

	public List<Jewellery> findJList(@Param("page")int page,
			@Param("limit")int limit);
	
	public List<Jewellery> findReviewJList(@Param("page")int page,
			@Param("limit")int limit);
	
	public Jewellery findJInfo(int jid);

	public void changeJstate(String state,int jid);

	public List<User> findUList(int page, int limit);
}
