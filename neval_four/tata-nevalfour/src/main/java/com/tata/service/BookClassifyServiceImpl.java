package com.tata.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tata.mapper.BookClassifyMapper;
import com.tata.pojo.BookClassify;
import com.tata.pojo.BookClassifyExample;
import com.tata.pojo.BookClassifyExample.Criteria;

@Service
public class BookClassifyServiceImpl implements BookClassifyService {

	@Autowired
	private BookClassifyMapper bookClassifyMapper;
	
	//返回所有书籍信息（pojo）列表
	@Override
	public List<BookClassify> getBookList() {
		BookClassifyExample example = new BookClassifyExample();
		Criteria criteria = example.createCriteria();
		
		List<BookClassify> list = bookClassifyMapper.selectByExampleWithBLOBs(example);
		return list;
	}

}
