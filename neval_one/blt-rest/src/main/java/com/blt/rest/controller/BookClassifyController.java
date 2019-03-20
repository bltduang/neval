package com.blt.rest.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.converter.json.MappingJacksonValue;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.blt.rest.pojo.BookClassifyResult;
import com.blt.rest.service.BookClassifyIndexService;
import com.blt.rest.service.BookClassifyService;

@Controller
public class BookClassifyController {
	

	@Autowired
	private BookClassifyIndexService bookClassifyIndexService;
	
	//返回首页书籍信息列表
	@RequestMapping("/book/list")
	@ResponseBody
	public Object getBookList(String callback) { 
		BookClassifyResult bookResult = bookClassifyIndexService.getBookList();
		MappingJacksonValue mappingJacksonValue = new MappingJacksonValue(bookResult);
		mappingJacksonValue.setJsonpFunction(callback);
		return mappingJacksonValue;
	}
	
	//http://localhost:8081/rest/book/list?callback=
}
