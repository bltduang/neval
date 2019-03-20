package com.blt.rest.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.blt.mapper.BookClassifyMapper;
import com.blt.pojo.BookClassify;
import com.blt.pojo.BookClassifyExample;
import com.blt.pojo.BookClassifyExample.Criteria;
import com.blt.rest.pojo.BookClassifyResult;

@Service
public class BookClassifyServiceImpl implements BookClassifyService {

	@Autowired
	private BookClassifyMapper bookClassifyMapper;
	
	//将所有书籍数据封住成BookClassifyResult返回
	@Override
	public BookClassifyResult getBookList() {
		BookClassifyResult bookResult = new BookClassifyResult();
		bookResult.setData(getBookListData());
		return bookResult;
	}
	
	//获取所有书籍列表
	private List<?> getBookListData(){
		
		BookClassifyExample example = new BookClassifyExample();
		Criteria criteria = example.createCriteria();
		List<BookClassify> list = bookClassifyMapper.selectByExampleWithBLOBs(example);
		return list;
	}

}
