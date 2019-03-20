package com.blt.rest.service;

import java.awt.print.Book;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.blt.mapper.BookActicleMapper;
import com.blt.mapper.BookClassifyMapper;
import com.blt.mapper.BookContentMapper;
import com.blt.pojo.BookActicle;
import com.blt.pojo.BookActicleExample;
import com.blt.pojo.BookClassify;
import com.blt.pojo.BookContent;
import com.blt.pojo.BookActicleExample.Criteria;

@Service
public class BookContentServiceImpl implements BookContentService {

	@Autowired
	private BookContentMapper bookContentMapper;
	
	@Autowired
	private BookActicleMapper bookActilceMapper;

	//通过digest查询本章内容
	@Override
	public BookContent getBookContent(String digest) {
		
		try {
			BookContent bookContent = bookContentMapper.selectByPrimaryKey(digest);
			return bookContent;
			
		} catch (Exception e) {
			BookContent bookContent = new BookContent();
			bookContent.setDigest("000134c8f7544ec7bbc6066899b608e8");
			bookContent.setContent("内容加载失败，请联系管理员");
			bookContent.setIdx(1);
			return bookContent;
		}
		
	
	}

	//通过digest查询本书所有章节
	
	@Override
	public List<BookActicle> getBookActicle(String digest) {
		BookActicleExample example = new BookActicleExample();
		Criteria criteria = example.createCriteria();
		criteria.andDigestEqualTo(digest);
		
		//只查询到本书的一个章节
		List<BookActicle> list = bookActilceMapper.selectByExample(example);
		BookActicle bookActicle = new BookActicle();
		for (BookActicle bookActicle1 : list) {
			bookActicle.setBookid(bookActicle1.getBookid());

		}
		
		BookActicleExample example1 = new BookActicleExample();
		Criteria criteria1 = example1.createCriteria();
		criteria1.andBookidEqualTo(bookActicle.getBookid());
		//查询到本书的所有章节   返回章节列表
		List<BookActicle> list2 = bookActilceMapper.selectByExample(example1);
		
		return list2;
	}


}
