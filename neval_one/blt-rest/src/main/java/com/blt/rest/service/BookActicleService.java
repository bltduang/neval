package com.blt.rest.service;

import java.util.List;

import com.blt.pojo.BookActicle;
import com.blt.pojo.BookClassify;

public interface BookActicleService {
	
	//根据书籍id，返回本书章节列表
	List<BookActicle> getBookActicle(Long bookid);
	
	//返回本书相关信息
	BookClassify getBookClassify(Long bookid);
}
