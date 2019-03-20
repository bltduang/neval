package com.tata.service;

import java.util.List;

import com.tata.pojo.BookActicle;
import com.tata.pojo.BookClassify;



public interface BookActicleService {

	//返回本书章节列表
	List<BookActicle> getBookActicle(Long bookid);
	
	//返回本书的其他相关信息
	BookClassify getBookClassify(Long bookid);
}
