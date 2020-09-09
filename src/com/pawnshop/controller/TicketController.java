package com.pawnshop.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.pawnshop.po.Jewellery;
import com.pawnshop.service.TicketService;

@Controller
@RequestMapping(value = "/ticket")
public class TicketController {

	@Autowired
	private TicketService ticketService;

	/*-----------------------------挂失当票-----------------------------*/
	// 跳转到挂失当票页面
	@RequestMapping(value = "/toReport")
	public String toReport() {
		return "report";
	}

	// 挂失
	@RequestMapping(value = "/reportLoss", method = RequestMethod.POST)
	@ResponseBody
	public void jewelleryEvaluation(@RequestParam int tid) {
		System.out.println("要挂失的当票id：" + tid);
		ticketService.updateStateLoss(tid);
	}

}
