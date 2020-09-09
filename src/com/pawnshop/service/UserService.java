package com.pawnshop.service;

import java.io.IOException;
import java.util.List;

import org.springframework.ui.ModelMap;
import org.springframework.web.multipart.MultipartFile;

import com.pawnshop.po.Jewellery;
import com.pawnshop.po.User;

public interface UserService {
	public User findUser(String username,String password);
	
	public User findUserByName(String username);
	
	public List<Jewellery> findPawnList(int page,int limit);
	
	public int updateInfo(User user);
	
	public int updateJewellery(Jewellery jewellery);
	
	/**
	 * 查询所有的图片
	 * @return
	 */
	List<User> list();
	
	/**
	 * 上传一张图片
	 * @param product
	 * @return
	 */
	public String save(MultipartFile file, User user, ModelMap map)throws IOException;
}
