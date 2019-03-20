package com.tata.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.blt.common.pojo.BltResult;
import com.blt.common.utils.ExceptionUtil;
import com.blt.common.utils.JsonUtils;
import com.tata.pojo.BookActicle;
import com.tata.pojo.BookClassify;
import com.tata.service.BookActicleService;


@Controller
public class DetailsController {
	
	@Autowired
	private BookActicleService bookActicleService;

	//跳转到章节列表页
	@RequestMapping(value="/details/{id}" , produces=MediaType.TEXT_HTML_VALUE+";charset=utf-8")
	public String showDetails(
			@PathVariable("id") Long bookid ,
			Model model) {
		System.out.println("id"+bookid);
		
		//获取章节列表后向页面传递章节列表
		List<BookActicle> bookActicle = bookActicleService.getBookActicle(bookid);
//		String bookActiclesString = JsonUtils.objectToJson(bookActicle);
		model.addAttribute("bookActicle", bookActicle);
		//http://localhost:8090/bookActicle/1000694771
		
		//获取书信息向页面传递书信息
		BookClassify classify = bookActicleService.getBookClassify(bookid);
//		String bookClassifyString = JsonUtils.objectToJson(classify);
		model.addAttribute("bookClassify", classify);
		//http://localhost:8090/bookClassify/1000694771
		
		return "details";
	}
	
	
}
