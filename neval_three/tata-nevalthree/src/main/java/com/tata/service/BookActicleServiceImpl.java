package com.tata.service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.tata.mapper.BookActicleMapper;
import com.tata.mapper.BookClassifyMapper;
import com.tata.pojo.BookActicle;
import com.tata.pojo.BookActicleExample;
import com.tata.pojo.BookActicleExample.Criteria;
import com.tata.pojo.BookClassify;

@Service
public class BookActicleServiceImpl implements BookActicleService {

	@Autowired
	private BookClassifyMapper bookClassifyMapper;
	
	@Autowired
	private BookActicleMapper bookActicleMapper;
	
	//通过bookid获取章节列表
	@Override
	public List<BookActicle> getBookActicle(Long bookid) {
		
		BookActicleExample example = new BookActicleExample();
		Criteria criteria = example.createCriteria();
		criteria.andBookidEqualTo(bookid);
		List<BookActicle> list = bookActicleMapper.selectByExample(example);
		
		return list;
	}
	
	//通过bookid获取本书信息
	@Override
	public BookClassify getBookClassify(Long bookid) {
		
		BookClassify bookClassify = bookClassifyMapper.selectByPrimaryKey(bookid);
		
		return bookClassify;
		
	}

}
