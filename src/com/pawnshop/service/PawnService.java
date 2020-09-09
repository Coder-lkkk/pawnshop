package com.pawnshop.service;

import java.io.IOException;
import java.util.List;

import org.springframework.ui.ModelMap;
import org.springframework.web.multipart.MultipartFile;

import com.pawnshop.po.Bag;
import com.pawnshop.po.Diamond;
import com.pawnshop.po.Jewellery;
import com.pawnshop.po.Metal;
import com.pawnshop.po.Stone;
import com.pawnshop.po.Watch;

public interface PawnService {

	void insertMetal(Metal record);
	
	void insertJewellery(Jewellery jewellery);
	
	void insertBag(Bag bag);
	
	void insertDiamond(Diamond diamond);
	
	void insertStone(Stone stone);
	
	void insertWatch(Watch watch);
	
	void insertDiamond(Watch watch);
	
	void updateJewelleryState(int jid,String state);
	
	List<Jewellery> findReviewList();

	String saveJimage(MultipartFile file, Jewellery jewellery, ModelMap map)throws IOException;


}
