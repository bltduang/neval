package com.blt.rest.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.blt.common.pojo.BltResult;
import com.blt.pojo.BookActicle;
import com.blt.pojo.BookContent;
import com.blt.rest.service.BookContentService;

@Controller
public class BookContentController {

	@Autowired
	private BookContentService bookContentService;
	
	//根据章节digest返回本章内容  
	@RequestMapping("/bookContent/{digest}")
	@ResponseBody
	public BltResult getBookContent(@PathVariable String digest){
		
		BookContent bookContent = bookContentService.getBookContent(digest);
		
		return BltResult.ok(bookContent);
		
	}
//	http://localhost:8081/rest/bookContent/00083c1dba3c45bfa8477243c2183c68
	
	//根据章节id，返回本书所有章节
	@RequestMapping("/bookContentActicle/{digest}")
	@ResponseBody
	public BltResult getBookActicle(@PathVariable String digest){
		
		List<BookActicle> list = bookContentService.getBookActicle(digest);
		
		return BltResult.ok(list);
		
	}
//	http://localhost:8081/rest/bookContentActicle/00083c1dba3c45bfa8477243c2183c68
}
