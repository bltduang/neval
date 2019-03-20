package com.tata.service;

import java.util.List;
import java.util.Map;

import com.tata.pojo.BookActicle;
import com.tata.pojo.BookContent;


public interface BookContentService {

	//返回本章阅读信息
	BookContent getBookContent(String digest);
	
	//返回本章所在书籍的包含上一章下一章内容的map
	Map getBookActicle(String digest);
}
