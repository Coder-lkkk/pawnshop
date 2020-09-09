package com.pawnshop.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pawnshop.dao.ContinueDao;
import com.pawnshop.po.Bag;
import com.pawnshop.po.Diamond;
import com.pawnshop.po.Jewellery;
import com.pawnshop.po.Metal;
import com.pawnshop.po.Stone;
import com.pawnshop.po.Watch;
import com.pawnshop.service.ContinueService;

@Service("ContinueService")
public class ContinueServiceImpl implements ContinueService {

	@Autowired
	private ContinueDao continueDao;
	@Override
	public List<Jewellery> getJewelleryList(int uid) {
		return continueDao.getJewelleryList(uid);
	}
	@Override
	public void updateJewelleryState(int jid) {
		continueDao.updateJewelleryState(jid);
	}
	@Override
	public List<Watch> getWatchList(int uid) {
		return continueDao.getWatchList(uid);
	}
	@Override
	public void updateWatchState(int wid) {
		continueDao.updateWatchState(wid);
	}
	@Override
	public List<Bag> getBagList(int uid) {
		return continueDao.getBagList(uid);
	}
	@Override
	public void updateBagState(int bid) {
		continueDao.updateBagState(bid);
	}
	@Override
	public List<Diamond> getDiamondList(int uid) {
		return continueDao.getDiamondList(uid);
	}
	@Override
	public void updateDiamondState(int did) {
		continueDao.updateDiamondState(did);
	}
	@Override
	public List<Metal> getMetalList(int uid) {
		return continueDao.getMetalList(uid);
	}
	@Override
	public void updateMetalState(int mid) {
		continueDao.updateMetalState(mid);
	}
	@Override
	public List<Stone> getStoneList(int uid) {
		return continueDao.getStoneList(uid);
	}
	@Override
	public void updateStoneState(int sid) {
		continueDao.updateStoneState(sid);
	}

}
