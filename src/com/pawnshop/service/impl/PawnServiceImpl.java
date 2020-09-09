package com.pawnshop.service.impl;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.multipart.MultipartFile;

import com.pawnshop.dao.PawnDao;
import com.pawnshop.po.Bag;
import com.pawnshop.po.Diamond;
import com.pawnshop.po.Jewellery;
import com.pawnshop.po.Metal;
import com.pawnshop.po.Stone;
import com.pawnshop.po.Watch;
import com.pawnshop.service.PawnService;

@Service("pawnService")
@Transactional
public class PawnServiceImpl implements PawnService{

	@Autowired
	private PawnDao pawnDao;
	
	@Override
	public void insertMetal(Metal metal){
		System.out.println("添加金属当品成功，修改了"+pawnDao.insertMetal(metal)+"行记录");
	}

	@Override
	public void insertJewellery(Jewellery jewellery) {
		System.out.println("添加珠宝当品成功，修改了"+pawnDao.insertJewellery(jewellery)+"行记录");
		
	}

	@Override
	public void insertBag(Bag bag) {
		System.out.println("添加名贵包包当品成功，修改了"+pawnDao.insertBag(bag)+"行记录");
	}

	@Override
	public void insertDiamond(Diamond diamond) {
		System.out.println("添加钻石当品成功，修改了"+pawnDao.insertDiamond(diamond)+"行记录");
	}

	@Override
	public void insertStone(Stone stone) {
		System.out.println("添加翡翠当品成功，修改了"+pawnDao.insertStone(stone)+"行记录");
	}

	@Override
	public void insertWatch(Watch watch) {
		System.out.println("添加手表当品成功，修改了"+pawnDao.insertWatch(watch)+"行记录");
	}

	@Override
	public void updateJewelleryState(int jid, String state) {
		pawnDao.updateJewelleryState(jid, state);
	}

	@Override
	public List<Jewellery> findReviewList() {
		return pawnDao.findReviewList();
	}

	@Override
	public void insertDiamond(Watch watch) {
	}

	@Override
	public String saveJimage(MultipartFile file, Jewellery jewellery,               //这个方法的内容写在controller里了，所以这里没有用
			ModelMap map) throws IOException {
				// 保存图片的路径，图片上传成功后，将路径保存到数据库
				String filePath = "D:\\zupload";
				// 获取原始图片的扩展名
				String originalFilename = file.getOriginalFilename();
				// 生成文件新的名字
				String newFileName = UUID.randomUUID() + originalFilename;
				// 封装上传文件位置的全路径
				File targetFile = new File(filePath, newFileName);
				file.transferTo(targetFile);
				
				// 保存到数据库
				jewellery.setJphoto(newFileName);
				pawnDao.saveJphoto(jewellery);
		return null;
	}
}
