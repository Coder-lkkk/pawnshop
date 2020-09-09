package com.pawnshop.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pawnshop.dao.AdminDao;
import com.pawnshop.po.Jewellery;
import com.pawnshop.po.User;
import com.pawnshop.service.AdminService;

@Service("adminService")
public class AdminServiceImpl implements AdminService{

	@Autowired
	private AdminDao adminDao;
	
	@Override
	public List<Jewellery> findJList(int page, int limit) {
		return adminDao.findJList(page, limit);
	}
	
	@Override
	public List<Jewellery> findReviewJList(int page, int limit) {
		return adminDao.findReviewJList(page, limit);
	}

	@Override
	public Jewellery findJInfo(int jid) {
		return adminDao.findJInfo(jid);
	}

	@Override
	public void changeJstate(String state,int jid) {
		 adminDao.changeJstate(state,jid);
	}

	@Override
	public List<User> findUList(int page, int limit) {
		return adminDao.findUList(page,limit);
	}

}
