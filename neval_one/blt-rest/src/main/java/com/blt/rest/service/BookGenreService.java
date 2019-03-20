package com.blt.rest.service;

import java.util.List;

import com.blt.common.pojo.EUDataGridResult;
import com.blt.pojo.BookGenre;

public interface BookGenreService {

	//返回分页查询结果集
	EUDataGridResult getBookCategoryList(int page,int rows,int bookCategory);

	//返回分类结果列表
	List<BookGenre> getBookCategory(int bookCategory);
}
