package com.pawnshop.controller;

import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.alibaba.fastjson.JSON;
import com.pawnshop.po.Bag;
import com.pawnshop.po.Diamond;
import com.pawnshop.po.Jewellery;
import com.pawnshop.po.Metal;
import com.pawnshop.po.Stone;
import com.pawnshop.po.Watch;
import com.pawnshop.service.PawnService;

@Controller
@RequestMapping(value = "/pawn")
public class PawnController {

	@Autowired
	private PawnService pawnService;
	/*------------------------典当----------------------*/
	// 跳转到典当页面
		@RequestMapping(value = "/toPawn", method = RequestMethod.GET)
		public String toPawn() {
			return "pawn";
		}
	/*------------------------估当----------------------*/

	// 跳转到估当页面
	@RequestMapping(value = "/toEvaluation", method = RequestMethod.GET)
	public String evaluation() {
		return "evaluation";
	}

	// 珠宝估当
	@RequestMapping(value = "/jewelleryEvaluation", method = RequestMethod.POST)
	@ResponseBody
	public void jewelleryEvaluation(String jbrand,String jmaterial,String jinmaterial,Double jusage,
				String jattachment,Double jpremoney,Date jbuytime,@RequestParam( value="jimg",required=false)MultipartFile file) throws IOException {
		Jewellery jewellery = new Jewellery();
		jewellery.setJbrand(jbrand);
		jewellery.setJmaterial(jmaterial);
		jewellery.setJinmaterial(jinmaterial);
		jewellery.setJusage(jusage);
		jewellery.setJattachment(jattachment);
		jewellery.setJpremoney(jpremoney);
		jewellery.setJbuytime(jbuytime);
		jewellery.setJstate("估当中");
		// 保存图片的路径，图片上传成功后，将路径保存到数据库
		String filePath = "D:\\zupload";
		// 获取原始图片的扩展名
		String originalFilename = file.getOriginalFilename();
		// 生成文件新的名字
		String newFileName = UUID.randomUUID() + originalFilename;
		// 封装上传文件位置的全路径
		File targetFile = new File(filePath, newFileName);
		file.transferTo(targetFile);

		jewellery.setJphoto(newFileName);
		pawnService.insertJewellery(jewellery);
	}
	
	//保存珠宝图片
	@RequestMapping(value="/saveJimage",method = RequestMethod.POST)
	public String save(MultipartFile file, Jewellery jewellery, ModelMap map) {
		try {
			return pawnService.saveJimage(file, jewellery, map);
		} catch (IOException e) {
			e.printStackTrace();
		}
		return null;
	}
	
	// 钻石估当
	@RequestMapping(value = "/diamondEvaluation", method = RequestMethod.POST)
	@ResponseBody
	public void diamondEvaluation(@RequestBody Diamond diamond) {
		System.out.println("要估当的钻石：" + diamond);
		diamond.setDstate("估当中");
		pawnService.insertDiamond(diamond);
	}

	// 手表估当
	@RequestMapping(value = "/watchEvaluation", method = RequestMethod.POST)
	@ResponseBody
	public void watchEvaluation(@RequestBody Watch watch) {
		System.out.println("要估当的手表：" + watch);
		watch.setWstate("估当中");
		pawnService.insertWatch(watch);
	}
		
	// 奢侈品箱包估当
	@RequestMapping(value = "/bagEvaluation", method = RequestMethod.POST)
	@ResponseBody
	public void bagEvaluation(@RequestBody Bag bag) {
		System.out.println("要估当的箱包：" + bag);
		bag.setBstate("估当中");
		pawnService.insertBag(bag);
	}
		
	// 翡翠玉石估当
	@RequestMapping(value = "/stoneEvaluation", method = RequestMethod.POST)
	@ResponseBody
	public void StoneEvaluation(@RequestBody Stone stone) {
		System.out.println("要估当的石头：" + stone);
		stone.setSstate("估当中");
		pawnService.insertStone(stone);
	}
		
	// 金属估当
	@RequestMapping(value = "/materialEvaluation", method = RequestMethod.POST)
	@ResponseBody
	public void materialEvaluation(@RequestBody Metal metal) {
		pawnService.insertMetal(metal);
	}
	
/*-----------------------------管理员操作-----------------------------*/
	// 管理员页面跳转到审核页面
	@RequestMapping(value = "/toReview")
	public String toReview() {
		return "review";
	}
	// 审核页面跳转到审核详情
	@RequestMapping(value = "/toReviewPawn")
	public String toReviewPawn() {
		return "reviewPawn";
	}
	// 得到待审核列表
	@RequestMapping(value = "/getReviewList",method = RequestMethod.GET)
	@ResponseBody
	public Map<String,Object> getReviewList(@RequestParam int page,@RequestParam int limit) {
		Map<String, Object> result = new HashMap<String, Object>();
	    result.put("code", 0);
	    result.put("msg", "");
	    result.put("count",50);
	    Object data=JSON.toJSON(pawnService.findReviewList());
	    System.out.println(data);
	    result.put("data", data);
		return result;
	}
	
}
