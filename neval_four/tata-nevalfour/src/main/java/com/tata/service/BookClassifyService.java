package com.tata.service;

import java.util.List;

import com.tata.pojo.BookClassify;

public interface BookClassifyService {

	//返回所有书籍信息（pojo）列表
	List<BookClassify> getBookList();
}
