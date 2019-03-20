package com.blt.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.blt.mapper.BookClassifyMapper;
import com.blt.mapper.BookContentMapper;
import com.blt.pojo.BookClassify;
import com.blt.pojo.BookContent;

@Service
public class BookContentServiceImpl implements BookContentService {

	@Autowired
	private BookContentMapper bookContentMapper;
	
	@Autowired
	private BookClassifyMapper bookClassifyMapper;
	@Override
	public void insertBookContent(BookContent bookContent) throws Exception {
		bookContentMapper.insertSelective(bookContent);
	}
	@Override
	public void insertBookClassify(BookClassify bookClassify) throws Exception {

		bookClassifyMapper.insert(bookClassify);
	}

}
