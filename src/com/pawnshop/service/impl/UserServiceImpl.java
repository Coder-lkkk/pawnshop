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

import com.pawnshop.dao.UserDao;
import com.pawnshop.po.Jewellery;
import com.pawnshop.po.User;
import com.pawnshop.service.UserService;

@Service("userService")
@Transactional
public class UserServiceImpl implements UserService{
	@Autowired
	private UserDao userDao;
	@Override
	public User findUser(String username, String password) {
		// TODO Auto-generated method stub
		User user=this.userDao.findUser(username, password);
		System.out.println(user);
		return user;
	}
	
	@Override
	public User findUserByName(String username) {
		return(userDao.findUserByName(username));
	}
	
	@Override
	public List<Jewellery> findPawnList(int page, int limit) {
		return userDao.findPawnList(page, limit);
	}
	
	@Override
	public int updateInfo(User user) {
		return userDao.updateInfo(user);
	}

	@Override
	public List<User> list() {
		return userDao.list();
	}

	@Override
	public int updateJewellery(Jewellery jewellery) {
		return userDao.updateJewellery(jewellery);
	}
	
	@Override
	@Transactional
	public String save(MultipartFile file, User user, ModelMap map) throws IOException {
		
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
		user.setUimage(newFileName);
		userDao.save(user);
		return "redirect:/user/listImages";
	}


	

}
