package com.tata.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tata.pojo.BookContent;
import com.tata.service.BookContentService;

@Controller
public class ReadController {

	@Autowired
	private BookContentService bookContentService;
	
	//跳转到阅读内容页
	@RequestMapping(value="/read/{digest}" , produces=MediaType.TEXT_HTML_VALUE+";charset=utf-8")
	public String showRead(
			@PathVariable("digest") String digest ,
			Model model) {
		System.out.println("digest" + digest);
		
		//返回本章内容
		BookContent bookContent = bookContentService.getBookContent(digest);
		model.addAttribute("bookContent", bookContent);
		
		//返回包含上一章 下一章 书籍id等内容的map
		Map acticle = bookContentService.getBookActicle(digest);
		model.addAttribute("bookActicle", acticle);
		
		return "read";
	}
}
