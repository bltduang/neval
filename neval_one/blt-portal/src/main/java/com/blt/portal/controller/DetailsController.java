package com.blt.portal.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.blt.portal.service.BookActicleService;

@Controller
public class DetailsController {
	
	@Autowired
	private BookActicleService bookActicleService;

	//跳转到详情页，并将本书章节信息、本书详细信息传入
	@RequestMapping(value="/details/{id}" , produces=MediaType.TEXT_HTML_VALUE+";charset=utf-8")
	public String showDetails(
			@PathVariable("id") Long bookid ,
			Model model) {
		System.out.println("id"+bookid);
		
		model.addAttribute("xh", 16);
		model.addAttribute("yq", 449);
		model.addAttribute("ds", 450);
		model.addAttribute("gy", 43);
		model.addAttribute("xy", 40);
		model.addAttribute("xx", 53);
		model.addAttribute("qt", 0);
		
		String bookActicle = bookActicleService.getBookActicle(bookid);
		model.addAttribute("bookActicle",bookActicle);
		System.out.println("bookActicle:"+bookActicle);
		
		String bookClassify = bookActicleService.getBookClassify(bookid);
		model.addAttribute("bookClassify", bookClassify);
		
	return "details";
	}
	
}
