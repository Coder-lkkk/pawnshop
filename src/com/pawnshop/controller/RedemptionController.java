package com.pawnshop.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.pawnshop.po.Bag;
import com.pawnshop.po.Diamond;
import com.pawnshop.po.Jewellery;
import com.pawnshop.po.Metal;
import com.pawnshop.po.Stone;
import com.pawnshop.po.Watch;
import com.pawnshop.service.RedemptionService;

@Controller
@RequestMapping(value = "/redemption")
public class RedemptionController {

	@Autowired
	private RedemptionService redemptionService;
	
	// 跳转到赎当主页面
	@RequestMapping(value = "/toRedemption")
	public String toRedemptiond() {
		return "redemption/redemption";
	}
	
	/*---------------------------珠宝-----------------------------------*/
	
	// 跳转到珠宝赎当页面
	@RequestMapping(value = "/toJ_redemption")
	public String toJ_redemption(Model model) {
		return "redemption/j_redemption";
	}
	
	//得到珠宝典当中列表
	@RequestMapping(value = "/getJewelleryList")
	@ResponseBody
	public List<Jewellery> jewelleryEvaluation(@RequestParam("uid") int uid,Model model) {
		System.out.println("珠宝典当中列表为："+redemptionService.getJewelleryList(uid));
		return redemptionService.getJewelleryList(uid);
	}
	
	//珠宝赎当操作
	@RequestMapping(value = "/jewelleryRedemption", method = RequestMethod.GET)
	public String jewelleryRedemption(@RequestParam("jid") int jid) {
		System.out.println("赎当的珠宝id为："+jid);
		redemptionService.updateJewelleryState(jid);
		return "redemption/j_redemption";
	}

	/*---------------------------手表-----------------------------------*/
	
	// 跳转到手表赎当页面
	@RequestMapping(value = "/toW_redemption")
	public String toW_redemption() {
		return "redemption/w_redemption";
	}
	
	//得到手表典当中列表
	@RequestMapping(value = "/getWatchList")
	@ResponseBody
	public List<Watch> getWatchList(@RequestParam("uid") int uid,Model model) {
		System.out.println("手表典当中列表为："+redemptionService.getWatchList(uid));
		return redemptionService.getWatchList(uid);
	}
	
	//手表赎当操作
	@RequestMapping(value = "/watchRedemption", method = RequestMethod.GET)
	public String watchRedemption(@RequestParam("wid") int wid) {
		System.out.println("赎当的手表id为："+wid);
		redemptionService.updateWatchState(wid);
		return "redemption/w_redemption";
	}
	/*---------------------------奢侈品箱包-----------------------------------*/
	
	// 跳转到奢侈品箱包赎当页面
	@RequestMapping(value = "/toB_redemption")
	public String toB_redemption() {
		return "redemption/b_redemption";
	}
	
	//得到奢侈品箱包典当中列表
	@RequestMapping(value = "/getBagList")
	@ResponseBody
	public List<Bag> getBagList(@RequestParam("uid") int uid,Model model) {
		System.out.println("奢侈品箱包典当中列表为："+redemptionService.getBagList(uid));
		return redemptionService.getBagList(uid);
	}
	
	//奢侈品箱包赎当操作
	@RequestMapping(value = "/bagRedemption", method = RequestMethod.GET)
	public String bagRedemption(@RequestParam("bid") int bid) {
		System.out.println("赎当的包包id为："+bid);
		redemptionService.updateBagState(bid);
		return "redemption/b_redemption";
	}
	/*---------------------------钻石-----------------------------------*/
	
	// 跳转到钻石赎当页面
	@RequestMapping(value = "/toD_redemption")
	public String toD_redemption() {
		return "redemption/d_redemption";
	}
	
	//得到钻石典当中列表
	@RequestMapping(value = "/getDiamondList")
	@ResponseBody
	public List<Diamond> getDiamondList(@RequestParam("uid") int uid,Model model) {
		System.out.println("钻石典当中列表为："+redemptionService.getDiamondList(uid));
		return redemptionService.getDiamondList(uid);
	}
	
	//钻石赎当操作
	@RequestMapping(value = "/diamondRedemption", method = RequestMethod.GET)
	public String diamondRedemption(@RequestParam("did") int did) {
		System.out.println("赎当的钻石id为："+did);
		redemptionService.updateDiamondState(did);
		return "redemption/d_redemption";
	}
	/*---------------------------贵金属-----------------------------------*/
	
	// 跳转到贵金属赎当页面
	@RequestMapping(value = "/toM_redemption")
	public String toM_redemption() {
		return "redemption/m_redemption";
	}
	
	//得到贵金属典当中列表
	@RequestMapping(value = "/getMetalList")
	@ResponseBody
	public List<Metal> getMetalList(@RequestParam("uid") int uid,Model model) {
		System.out.println("贵金属典当中列表为："+redemptionService.getMetalList(uid));
		return redemptionService.getMetalList(uid);
	}
	
	//贵金属赎当操作
	@RequestMapping(value = "/metalRedemption", method = RequestMethod.GET)
	public String metalRedemption(@RequestParam("mid") int mid) {
		System.out.println("赎当的金属id为："+mid);
		redemptionService.updateMetalState(mid);
		return "redemption/m_redemption";
	}
	/*---------------------------翡翠玉石-----------------------------------*/
	
	// 跳转到翡翠玉石赎当页面
	@RequestMapping(value = "/toS_redemption")
	public String toS_redemption() {
		return "redemption/s_redemption";
	}

	//得到翡翠玉石典当中列表
	@RequestMapping(value = "/getStoneList")
	@ResponseBody
	public List<Stone> getStoneList(@RequestParam("uid") int uid,Model model) {
		System.out.println("翡翠玉石典当中列表为："+redemptionService.getStoneList(uid));
		return redemptionService.getStoneList(uid);
	}
	
	//翡翠玉石赎当操作
	@RequestMapping(value = "/stoneRedemption", method = RequestMethod.GET)
	public String stoneRedemption(@RequestParam("sid") int sid) {
		System.out.println("赎当的翡翠id为："+sid);
		redemptionService.updateStoneState(sid);
		return "redemption/s_redemption";
	}
	
	
}
