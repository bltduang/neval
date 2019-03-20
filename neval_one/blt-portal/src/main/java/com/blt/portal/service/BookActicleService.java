package com.blt.portal.service;

public interface BookActicleService {
	//通过id获取本书章节list
	String getBookActicle(Long bookid);
	
	//	通过id获取本书详细信息
	String getBookClassify(Long bookid);
}
