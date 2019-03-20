package com.blt.rest.service;

import java.util.List;

import com.blt.pojo.BookActicle;
import com.blt.pojo.BookContent;

public interface BookContentService {
	
	//查询本章content
	BookContent getBookContent(String digest);
	
	//查询本章所在书籍所有章节
	List<BookActicle> getBookActicle(String digest);
}
