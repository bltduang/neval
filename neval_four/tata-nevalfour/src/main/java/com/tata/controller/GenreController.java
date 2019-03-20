package com.tata.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.blt.common.pojo.EUDataGridResult;
import com.tata.pojo.BookGenre;
import com.tata.service.BookGenreService;

@Controller
public class GenreController {

	@Autowired
	private BookGenreService bookGenreService;
	
	//跳转分类页面 并向前传递查询的列表
	@RequestMapping(value="/category/{fl}/{page}" , produces=MediaType.TEXT_HTML_VALUE+";charset=utf-8")
	public String showCategory(
			@PathVariable("fl") Integer categoryid ,
			@PathVariable("page") Integer pagenum ,
			Model model) {
		
		//获取分页内容全部列表
//		List<BookGenre> list = bookGenreService.getBookCategory(categoryid);
//		model.addAttribute("categorylist", list);
		
		//根据分页参数 返回分页信息
		
		int rows = 20;
		EUDataGridResult result = bookGenreService.getBookCategoryList(pagenum, rows, categoryid);
		model.addAttribute("categorylist", result);
		
		model.addAttribute("category", categoryid);
		return "genre";
	}
	
	//传入分页信息  返回分页列表
	@RequestMapping("/category/list")
	@ResponseBody
	public EUDataGridResult getBookCategoryList(Integer bookCategory ,Integer page,Integer rows) {
		EUDataGridResult result = bookGenreService.getBookCategoryList(page, rows, bookCategory);
		return result;
	}
	
	//访问路径  可查看数据
//	http://localhost:8092/category/list?bookCategory=16&page=2&rows=10
	
}
