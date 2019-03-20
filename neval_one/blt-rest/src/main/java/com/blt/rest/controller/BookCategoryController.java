package com.blt.rest.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.converter.json.MappingJacksonValue;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.blt.common.pojo.EUDataGridResult;
import com.blt.pojo.BookCategory;
import com.blt.pojo.BookGenre;
import com.blt.rest.service.BookGenreService;

@Controller
public class BookCategoryController {

	@Autowired
	private BookGenreService bookGenreService;
	
	//根据类别，返回类别jsonp列表
	@RequestMapping("/category/list/{bookCategory}")
	@ResponseBody
	public Object getCategoryList(@PathVariable("bookCategory") Integer bookCategory ,String callback) {
		
		List<BookGenre> list = bookGenreService.getBookCategory(bookCategory);
		
		MappingJacksonValue mappingJacksonValue = new MappingJacksonValue(list);
		mappingJacksonValue.setJsonpFunction(callback);
		return mappingJacksonValue;
	}
	
	//访问路径
//	http://localhost:8081/rest/category/list/16
//	http://47.93.36.145:9090/rest/category/list/16
	
	//传入分页信息，返回分页列表
	@RequestMapping("/category/list")
	@ResponseBody
	public EUDataGridResult getBookCategoryList(Integer bookCategory ,Integer page,Integer rows) {
		EUDataGridResult result = bookGenreService.getBookCategoryList(page, rows, bookCategory);
		return result;
	}
	//访问路径
//	http://localhost:8081/rest/category/list?bookCategory=16&page=2&rows=10
	
	//外网访问
//	http://47.93.36.145:9090/rest/category/list?bookCategory=16&page=2&rows=10
}
