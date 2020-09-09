package com.pawnshop.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pawnshop.dao.TicketDao;
import com.pawnshop.service.TicketService;

@Service("TicketService")
public class TicketServiceImpl implements TicketService {

	@Autowired
	private TicketDao ticketDao;

	@Override
	public int updateStateLoss(int id) {
		return ticketDao.updateStateLoss(id);
	}
}
