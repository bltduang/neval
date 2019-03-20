package com.tata.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.converter.json.MappingJacksonValue;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.tata.pojo.BookClassifyIndex;
import com.tata.service.BookClassifyIndexService;

@Controller
public class IndexController {

	@Autowired
	private BookClassifyIndexService bookClassifyIndexService;
	
	//跳转到首页
	@RequestMapping("/")
	public String showIndex(Model model) {
		
		List<BookClassifyIndex> bookList = bookClassifyIndexService.getBookList();
		model.addAttribute("bookList", bookList);
		
		return "index";
	}
	
	//返回首页信息（pojo）列表    通过下列url可以直接访问  传递一个jsonp格式的数据
	@RequestMapping("/book/list")
	@ResponseBody
	public Object getBookList(String callback) { 
		List<BookClassifyIndex> bookResult = bookClassifyIndexService.getBookList();
		MappingJacksonValue mappingJacksonValue = new MappingJacksonValue(bookResult);
		mappingJacksonValue.setJsonpFunction(callback);
		return mappingJacksonValue;
	}
	
//	http://localhost:8090/book/list?callback=callback
}
