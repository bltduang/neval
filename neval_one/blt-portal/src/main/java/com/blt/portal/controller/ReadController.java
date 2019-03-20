package com.blt.portal.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.blt.portal.service.BookContentService;

@Controller
public class ReadController {

	@Autowired
	private BookContentService bookContentService;
	
	//跳转阅读页面，并将本书content等内容、本书所在章节相关信息传入
	@RequestMapping(value="/read/{digest}" , produces=MediaType.TEXT_HTML_VALUE+";charset=utf-8")
	public String showRead(
			@PathVariable("digest") String digest ,
			Model model) {
		
		model.addAttribute("xh", 16);
		model.addAttribute("yq", 449);
		model.addAttribute("ds", 450);
		model.addAttribute("gy", 43);
		model.addAttribute("xy", 40);
		model.addAttribute("xx", 53);
		model.addAttribute("qt", 0);
		
		String bookActicle = bookContentService.getBookActicle(digest);
		model.addAttribute("bookActicle", bookActicle);
		
		String bookContent = bookContentService.getBookContent(digest);
		model.addAttribute("bookContent", bookContent);
		System.out.println("digest:"+digest);
		
		return "read";
	}
}
