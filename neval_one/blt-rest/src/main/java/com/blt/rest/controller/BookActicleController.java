package com.blt.rest.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.blt.common.pojo.BltResult;
import com.blt.common.utils.ExceptionUtil;
import com.blt.pojo.BookActicle;
import com.blt.pojo.BookClassify;
import com.blt.rest.service.BookActicleService;

@Controller
public class BookActicleController {

	@Autowired
	private BookActicleService bookActicleService;
	
	//根据书籍id返回本书章节列表
	@RequestMapping("/bookActicle/{bookid}")
	@ResponseBody
	public BltResult getBookActicle(@PathVariable Long bookid) {
		
		try {
			List<BookActicle> bookActicle = bookActicleService.getBookActicle(bookid);
			return BltResult.ok(bookActicle);
		} catch (Exception e) {
			e.printStackTrace();
			return BltResult.build(500, ExceptionUtil.getStackTrace(e));
		}
	}
	//http://localhost:8081/rest/bookActicle/1000694771
	
	//根据书籍id返回本书相关信息
	@RequestMapping("/bookClassify/{bookid}")
	@ResponseBody
	public BltResult getBookClassify(@PathVariable Long bookid) {
		
		try {
			BookClassify classify = bookActicleService.getBookClassify(bookid);
			return BltResult.ok(classify);
		} catch (Exception e) {
			e.printStackTrace();
			return BltResult.build(500, ExceptionUtil.getStackTrace(e));
		}
	}
	
	//http://localhost:8081/rest/bookClassify/1000694771
	
}
