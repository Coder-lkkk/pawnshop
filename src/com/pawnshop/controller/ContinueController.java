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
import com.pawnshop.service.ContinueService;

@Controller
@RequestMapping(value = "/continue")
public class ContinueController {
	
		@Autowired
		private ContinueService continueService;
		// 跳转到续当主页面
		@RequestMapping(value = "/toContinued")
		public String toContinued() {
			return "continue/continued";
		}
		/*---------------------------珠宝-----------------------------------*/
		
		// 跳转到珠宝续当页面
		@RequestMapping(value = "/toJ_continued")
		public String toJ_continued(Model model) {
			return "continue/j_continued_2";
		}
		
		//得到珠宝待续当列表
		@RequestMapping(value = "/getJewelleryList")
		@ResponseBody
		public List<Jewellery> jewelleryEvaluation(@RequestParam("uid") int uid,Model model) {
			System.out.println("珠宝待续当列表为："+continueService.getJewelleryList(uid));
			return continueService.getJewelleryList(uid);
		}
		
		//珠宝续当操作
		@RequestMapping(value = "/jewelleryContinue", method = RequestMethod.GET)
		public String jewelleryContinue(@RequestParam("jid") int jid) {
			System.out.println("续当的珠宝id为："+jid);
			continueService.updateJewelleryState(jid);
			return "continue/j_continued_2";
		}

		/*---------------------------手表-----------------------------------*/
		
		// 跳转到手表续当页面
		@RequestMapping(value = "/toW_continued")
		public String toW_continued() {
			return "continue/w_continued";
		}
		
		//得到手表待续当列表
		@RequestMapping(value = "/getWatchList")
		@ResponseBody
		public List<Watch> getWatchList(@RequestParam("uid") int uid,Model model) {
			System.out.println("手表待续当列表为："+continueService.getWatchList(uid));
			return continueService.getWatchList(uid);
		}
		
		//手表续当操作
		@RequestMapping(value = "/watchContinue", method = RequestMethod.GET)
		public String watchContinue(@RequestParam("wid") int wid) {
			System.out.println("续当的手表id为："+wid);
			continueService.updateWatchState(wid);
			return "continue/w_continued";
		}
		/*---------------------------奢侈品箱包-----------------------------------*/
		
		// 跳转到奢侈品箱包续当页面
		@RequestMapping(value = "/toB_continued")
		public String toB_continued() {
			return "continue/b_continued";
		}
		
		//得到奢侈品箱包待续当列表
		@RequestMapping(value = "/getBagList")
		@ResponseBody
		public List<Bag> getBagList(@RequestParam("uid") int uid,Model model) {
			System.out.println("奢侈品箱包待续当列表为："+continueService.getBagList(uid));
			return continueService.getBagList(uid);
		}
		
		//奢侈品箱包续当操作
		@RequestMapping(value = "/bagContinue", method = RequestMethod.GET)
		public String bagContinue(@RequestParam("bid") int bid) {
			System.out.println("续当的包包id为："+bid);
			continueService.updateBagState(bid);
			return "continue/b_continued";
		}
		/*---------------------------钻石-----------------------------------*/
		
		// 跳转到钻石续当页面
		@RequestMapping(value = "/toD_continued")
		public String toD_continued() {
			return "continue/d_continued";
		}
		
		//得到钻石待续当列表
		@RequestMapping(value = "/getDiamondList")
		@ResponseBody
		public List<Diamond> getDiamondList(@RequestParam("uid") int uid,Model model) {
			System.out.println("钻石箱包待续当列表为："+continueService.getDiamondList(uid));
			return continueService.getDiamondList(uid);
		}
		
		//钻石续当操作
		@RequestMapping(value = "/diamondContinue", method = RequestMethod.GET)
		public String diamondContinue(@RequestParam("did") int did) {
			System.out.println("续当的钻石id为："+did);
			continueService.updateDiamondState(did);
			return "continue/d_continued";
		}
		/*---------------------------贵金属-----------------------------------*/
		
		// 跳转到贵金属续当页面
		@RequestMapping(value = "/toM_continued")
		public String toM_continued() {
			return "continue/m_continued";
		}
		
		//得到贵金属待续当列表
		@RequestMapping(value = "/getMetalList")
		@ResponseBody
		public List<Metal> getMetalList(@RequestParam("uid") int uid,Model model) {
			System.out.println("贵金属待续当列表为："+continueService.getMetalList(uid));
			return continueService.getMetalList(uid);
		}
		
		//贵金属续当操作
		@RequestMapping(value = "/metalContinue", method = RequestMethod.GET)
		public String metalContinue(@RequestParam("mid") int mid) {
			System.out.println("续当的金属id为："+mid);
			continueService.updateMetalState(mid);
			return "continue/m_continued";
		}
		/*---------------------------翡翠玉石-----------------------------------*/
		
		// 跳转到翡翠玉石续当页面
		@RequestMapping(value = "/toS_continued")
		public String toS_continued() {
			return "continue/s_continued";
		}

		//得到翡翠玉石待续当列表
		@RequestMapping(value = "/getStoneList")
		@ResponseBody
		public List<Stone> getStoneList(@RequestParam("uid") int uid,Model model) {
			System.out.println("翡翠玉石待续当列表为："+continueService.getStoneList(uid));
			return continueService.getStoneList(uid);
		}
		
		//翡翠玉石续当操作
		@RequestMapping(value = "/stoneContinue", method = RequestMethod.GET)
		public String stoneContinue(@RequestParam("sid") int sid) {
			System.out.println("续当的翡翠id为："+sid);
			continueService.updateStoneState(sid);
			return "continue/s_continued";
		}
}
