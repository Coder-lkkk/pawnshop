package com.pawnshop.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pawnshop.dao.RedemptionDao;
import com.pawnshop.po.Bag;
import com.pawnshop.po.Diamond;
import com.pawnshop.po.Jewellery;
import com.pawnshop.po.Metal;
import com.pawnshop.po.Stone;
import com.pawnshop.po.Watch;
import com.pawnshop.service.RedemptionService;

@Service("redemptionService")
public class RedemptionServiceImpl implements RedemptionService {

	@Autowired
	private RedemptionDao redemptionDao;
	@Override
	public List<Jewellery> getJewelleryList(int uid) {
		return redemptionDao.getJewelleryList(uid);
	}
	@Override
	public void updateJewelleryState(int jid) {
		redemptionDao.updateJewelleryState(jid);
	}
	@Override
	public List<Watch> getWatchList(int uid) {
		return redemptionDao.getWatchList(uid);
	}
	@Override
	public void updateWatchState(int wid) {
		redemptionDao.updateWatchState(wid);
	}
	@Override
	public List<Bag> getBagList(int uid) {
		return redemptionDao.getBagList(uid);
	}
	@Override
	public void updateBagState(int bid) {
		redemptionDao.updateBagState(bid);
	}
	@Override
	public List<Diamond> getDiamondList(int uid) {
		return redemptionDao.getDiamondList(uid);
	}
	@Override
	public void updateDiamondState(int did) {
		redemptionDao.updateDiamondState(did);
	}
	@Override
	public List<Metal> getMetalList(int uid) {
		return redemptionDao.getMetalList(uid);
	}
	@Override
	public void updateMetalState(int mid) {
		redemptionDao.updateMetalState(mid);
	}
	@Override
	public List<Stone> getStoneList(int uid) {
		return redemptionDao.getStoneList(uid);
	}
	@Override
	public void updateStoneState(int sid) {
		redemptionDao.updateStoneState(sid);
	}
	
}
