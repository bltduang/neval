package com.tata.service;

import java.util.List;

import com.blt.common.pojo.EUDataGridResult;
import com.tata.pojo.BookGenre;


public interface BookGenreService {

	//返回分页分类列表
	EUDataGridResult getBookCategoryList(int page,int rows,int bookCategory);

	//返回整个分页列表
	List<BookGenre> getBookCategory(int bookCategory);
}
