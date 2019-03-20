package com.blt.portal.controller;

import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CategoryController {

	//跳转到分类页
	@RequestMapping(value="/category/{fl}" , produces=MediaType.TEXT_HTML_VALUE+";charset=utf-8")
	public String showCategory(
			@PathVariable("fl") Long categoryid ,
			Model model) {
		model.addAttribute("categoryid", categoryid);
		
		model.addAttribute("xh", 16);
		model.addAttribute("yq", 449);
		model.addAttribute("ds", 450);
		model.addAttribute("gy", 43);
		model.addAttribute("xy", 40);
		model.addAttribute("xx", 53);
		model.addAttribute("qt", 0);
		
		System.out.println("category:"+categoryid);
		return "category";
	}
	
}
