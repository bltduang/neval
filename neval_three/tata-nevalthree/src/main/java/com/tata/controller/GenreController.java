package com.tata.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tata.pojo.BookGenre;
import com.tata.service.BookGenreService;

@Controller
public class GenreController {

	@Autowired
	private BookGenreService bookGenreService;
	
	//跳转分类页面，并向前传递分页列表
	@RequestMapping(value="/category/{fl}" , produces=MediaType.TEXT_HTML_VALUE+";charset=utf-8")
	public String showCategory(
			@PathVariable("fl") Integer categoryid ,
			Model model) {
		
		//获取分页列表
		List<BookGenre> list = bookGenreService.getBookCategory(categoryid);
		
		model.addAttribute("categorylist", list);
		return "genre";
	}
}
