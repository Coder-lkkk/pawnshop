package com.pawnshop.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.pawnshop.dao.AdminDao;
import com.pawnshop.po.Jewellery;
import com.pawnshop.po.User;
import com.pawnshop.service.AdminService;

@Controller
@RequestMapping(value = "/admin")
public class AdminController {

	@Autowired
	private AdminService adminService;
	@Autowired
	private AdminDao adminDao;
	
	//跳转到待审核典当物列表页面
	@RequestMapping(value = "/toReview")
	public String toReview() {
		return "admin/review";
	}
	
	//跳转到审核页面
	@RequestMapping(value = "/toReviewPawn")
	public String toReviewPawn() {
		return "admin/reviewPawn";
	}
	
	//获取待审核的珠宝列表
	@RequestMapping(value = "/getReviewJList",method = RequestMethod.GET)
	@ResponseBody
	public Map<String,Object> getReviewJList(@RequestParam int page,@RequestParam int limit) throws JsonProcessingException {
		page = (page-1)*10;
		System.out.println("page:"+page+"limit"+limit);
		Map<String, Object> result = new HashMap<String, Object>();
		result.put("code", 0);
		result.put("msg", "");
		result.put("count",50);
		Object data=JSON.toJSON(adminService.findReviewJList(page, limit));
		System.out.println(data);
		result.put("data", data);
		return result;
	}
	
	//更改珠宝的状态
	@RequestMapping(value = "/changeJstate",method = RequestMethod.GET)
	@ResponseBody
	public void changeJstate(@RequestParam String state,@RequestParam int jid){
		System.out.println("获取到要更改为的id和状态是："+jid+state);
		adminService.changeJstate(state,jid);
	}
	
	//跳转到珠宝管理页面
	@RequestMapping(value = "/toJManagement")
	public String toJManagement() {
		return "admin/jManagement";
	}
	
	//获取珠宝列表
	@RequestMapping(value = "/getJList",method = RequestMethod.GET)
	@ResponseBody
	public Map<String,Object> getJList(@RequestParam int page,@RequestParam int limit) throws JsonProcessingException {
		page = (page-1)*10;
		System.out.println("page:"+page+"limit"+limit);
		Map<String, Object> result = new HashMap<String, Object>();
	    result.put("code", 0);
	    result.put("msg", "");
	    result.put("count",50);
	    Object data=JSON.toJSON(adminService.findJList(page, limit));
	    System.out.println(data);
	    result.put("data", data);
		return result;
	}
	
	
	//根据id获取珠宝信息
	@RequestMapping(value = "/getJInfo",method = RequestMethod.GET)
	@ResponseBody
	public Jewellery getJInfo(@RequestParam int jid){
		System.out.println("根据jid="+jid+"获取到的猪宝信息为"+adminService.findJInfo(jid));
		return adminService.findJInfo(jid);
	}
	
	//跳转到珠宝详情页面
	@RequestMapping(value = "/toJDetail")
	public String toJDetail() {
		return "admin/jdetail";
	}
	
	//跳转到编辑珠宝页面
	@RequestMapping(value = "/toAltJewellery")
	public String toAltJewellery() {
		return "admin/alter_jewellery";
	}
	
	//修改珠宝信息
	@RequestMapping(value = "/AltJewellery",method = RequestMethod.POST)
	@ResponseBody
	public Jewellery AltJewellery(@RequestBody Jewellery jewellery){
		return jewellery;
	}
	
	//跳转到用户管理页面
	@RequestMapping(value = "/toUManagement")
	public String toUManagement() {
		return "admin/umanagement";
	}
	
	//跳转到用户详情页面
	@RequestMapping(value = "/toUDetail")
	public String toUDetail() {
		return "admin/udetail";
	}
	
	//获取用户列表
	@RequestMapping(value = "/getUList",method = RequestMethod.GET)
	@ResponseBody
	public Map<String,Object> getUList(@RequestParam int page,@RequestParam int limit) throws JsonProcessingException {
		page = (page-1)*10;
		System.out.println("page:"+page+"limit"+limit);
		Map<String, Object> result = new HashMap<String, Object>();
	    result.put("code", 0);
	    result.put("msg", "");
	    result.put("count",50);
	    Object data=JSON.toJSON(adminService.findUList(page, limit));
	    System.out.println(data);
	    result.put("data", data);
		return result;
	}
	
	//根据id获取用户信息
	@RequestMapping(value = "/getUInfo",method = RequestMethod.GET)
	@ResponseBody
	public User getUInfo(@RequestParam int uid){
		System.out.println("根据uid="+uid+"获取到的用户信息为"+adminDao.findUInfo(uid));
		return adminDao.findUInfo(uid);
	}
	
	//跳转到编辑用户信息页面
	@RequestMapping(value = "/toUAlter")
	public String toUAlter() {
		return "admin/ualter";
	}
	
	//修改用户信息
	@RequestMapping(value = "/updateUser",method = RequestMethod.POST)
	@ResponseBody
	public void updateUser(@RequestBody User user){
		System.out.println("要修改id为"+user.getUid()+"的用户信息:"+user);
		adminDao.updateUser(user);
	}
	
}
