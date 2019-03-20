package com.blt.rest.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.EnableLoadTimeWeaving;
import org.springframework.stereotype.Service;

import com.blt.mapper.BookActicleMapper;
import com.blt.mapper.BookClassifyMapper;
import com.blt.pojo.BookActicle;
import com.blt.pojo.BookActicleExample;
import com.blt.pojo.BookActicleExample.Criteria;
import com.blt.pojo.BookClassify;

@Service
public class BookActicleServiceImpl implements BookActicleService {
	
	@Autowired
	private BookClassifyMapper bookClassifyMapper;

	@Autowired 
	private BookActicleMapper bookActicleMapper;
	
	//通过书籍编号  获取本书章节信息
	@Override
	public List<BookActicle> getBookActicle(Long bookid) {
		
		BookActicleExample example = new BookActicleExample();
		Criteria criteria = example.createCriteria();
		criteria.andBookidEqualTo(bookid);
		List<BookActicle> list = bookActicleMapper.selectByExample(example);
		
		return list;
	}

	//通过书籍编号，获取本书信息
	@Override
	public BookClassify getBookClassify(Long bookid) {
		BookClassify bookClassify = bookClassifyMapper.selectByPrimaryKey(bookid);
		return bookClassify;
	}



}
