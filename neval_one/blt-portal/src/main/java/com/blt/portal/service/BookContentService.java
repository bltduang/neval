package com.blt.portal.service;

import com.blt.pojo.BookActicle;

public interface BookContentService {
	
	//返回特定（通过digest查询）章节详细内容信息
	String getBookContent(String digest);
	
	//通过digest查询本章相关（包含下一章、上一章的检索id）
	String getBookActicle(String digest);
}
