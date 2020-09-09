package com.pawnshop.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.pawnshop.po.User;
import com.pawnshop.service.LoginService;
import com.pawnshop.service.UserService;

@Controller
@RequestMapping(value = "/login")
public class LoginController {
	@Autowired
	private LoginService loginService;
	@Autowired
	private UserService userService;

	//登录操作
	@RequestMapping(value = "/loginIn",method = RequestMethod.POST)
	@ResponseBody
	public int login(@RequestBody User loginUser,Model model,HttpServletRequest request) {
		String username = loginUser.getUsername();
		String password = loginUser.getPassword();
		User user = loginService.findUser(username, password);         //根据传入的账号和密码去数据库中查用户
		
		HttpSession session = request.getSession();
		session.setAttribute("user", user);                    //将查到的用户信息保存到session中
		model.addAttribute("user",user);
		if(username==null||username.equals("")||password==null||password.equals("")){
			model.addAttribute("info","用户名或密码不能为空");
		}
		if(user==null){
			System.out.println("验证失败");
			return -1;
		}else if(user.getUrole()==0){
			System.out.println("验证用户身份为管理员");
			return user.getUrole();
		}else{
			System.out.println("验证用户身份为普通用户");
			return user.getUrole();
		}
	}
	
	
//   ע��
	@RequestMapping(value = "/regist",method = RequestMethod.POST)
	@ResponseBody
	public int register(@RequestBody User user, Model model,HttpSession session){
		List<User> userList = this.loginService.checkRepeat(user.getUsername());
		if(userList.isEmpty()){
			loginService.regist(user.getUsername(), user.getPassword());
			return 1;
		}
		model.addAttribute("message","用户名重复");
		return 2;
	}
	
	//跳转到主页面(已登录)
	@RequestMapping(value = "/toMainlogined")
	public String toMain() {
		
//		System.out.println(request.getParameter("username"));
		return "mainlogined";
	}
	
	//跳转到主页面(未登录)
	@RequestMapping(value = "/toMainunlogin")
	public String toMainunlogin() {
		
//		System.out.println(request.getParameter("username"));
		return "mainunlogin";
	}
	
	//跳转到管理员页面
	@RequestMapping(value = "/toAdminMain")
	public String toAdminMain() {
		return "admin/adminMain";
	}
	//跳转到登录页面
	@RequestMapping(value = "/toLogin")
	public String toLogin() {
		return "login";
	}
}
