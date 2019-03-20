package com.blt.rest.service;

import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.blt.common.utils.ConcurrentHashMapUtil;
import com.blt.common.utils.JsonUtils;
import com.blt.mapper.BookClassifyIndexMapper;
import com.blt.pojo.BookClassifyIndex;
import com.blt.pojo.BookClassifyIndexExample;
import com.blt.pojo.BookClassifyIndexExample.Criteria;
import com.blt.rest.pojo.BookClassifyResult;
import com.tata.dao.JedisClient;



@Service
public class BookClassifyIndexServiceImpl implements BookClassifyIndexService {

	@Autowired
	private BookClassifyIndexMapper bookCLassifyIndexMapper;
	
	@Autowired
	private JedisClient jedisClient;
	
	//将首页数据封住成BookClassifyResult返回
	@Override
	public BookClassifyResult getBookList() {
		BookClassifyResult bookResult = new BookClassifyResult();
		bookResult.setData(getBookListData());
		return bookResult;
	}
	
	//获取首页书籍分类
	private List<?> getBookListData(){
		
		//从缓存中取内容
//		try {
//			String result = jedisClient.hget("1", "1");
//			if (!StringUtils.isBlank(result)) {
//				List<BookClassifyIndex> list = JsonUtils.jsonToList(result, BookClassifyIndex.class);
//				return list;
//			}
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
		
		//使用ConcurrentHashMap缓存到内存
		String account = "save";
		try {
			String result = ConcurrentHashMapUtil.getCache(account);
			if (!StringUtils.isBlank(result)) {
				List<BookClassifyIndex> list = JsonUtils.jsonToList(result, BookClassifyIndex.class);
				return list;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		BookClassifyIndexExample example = new BookClassifyIndexExample();
		Criteria criteria = example.createCriteria();
		List<BookClassifyIndex> list = bookCLassifyIndexMapper.selectByExampleWithBLOBs(example);
		
		//向缓存中添加内容
//		try {
//			//把list转换成字符串
//			String cacheString = JsonUtils.objectToJson(list);
//			jedisClient.hset("1", "1", cacheString);
//			
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
		
		//将数据缓存到内存
		try {
			String cacheString = JsonUtils.objectToJson(list);
			ConcurrentHashMapUtil.initCache(account,cacheString);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}

}
