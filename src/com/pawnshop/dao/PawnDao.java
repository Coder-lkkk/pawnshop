package com.pawnshop.dao;

import java.util.List;

import com.pawnshop.po.Bag;
import com.pawnshop.po.Diamond;
import com.pawnshop.po.Jewellery;
import com.pawnshop.po.Metal;
import com.pawnshop.po.Stone;
import com.pawnshop.po.Watch;

public interface PawnDao {

	int insertMetal(Metal metal);
	
	int insertJewellery(Jewellery jewellery);
	
	int insertBag(Bag bag);
	
	int insertDiamond(Diamond diamond);
	
	int insertStone(Stone stone);
	
	int insertWatch(Watch watch);
	
	int updateJewelleryState(int jid,String state);
	
	List<Jewellery> findReviewList();

	int saveJphoto(Jewellery jewellery);
	
}
