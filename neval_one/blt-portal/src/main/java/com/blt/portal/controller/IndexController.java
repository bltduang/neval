package com.blt.portal.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class IndexController {

	//跳转到首页
	@RequestMapping("/index")
	public String showIndex(Model model) {
		
		model.addAttribute("xh", 16);
		model.addAttribute("yq", 449);
		model.addAttribute("ds", 450);
		model.addAttribute("gy", 43);
		model.addAttribute("xy", 40);
		model.addAttribute("xx", 53);
		model.addAttribute("qt", 0);
		
//		String adJson = contentService.getContentList();
//		model.addAttribute("ad1", adJson);
		
		return "index";
	}
}
