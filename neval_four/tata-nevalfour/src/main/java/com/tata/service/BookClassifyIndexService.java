package com.tata.service;

import java.util.List;

import com.tata.pojo.BookClassifyIndex;

public interface BookClassifyIndexService {

	//返回首页信息（pojo）列表
	List<BookClassifyIndex> getBookList();
}
