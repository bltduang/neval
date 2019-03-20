package com.tata.service;

import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import com.blt.common.utils.ConcurrentHashMapUtil;
import com.blt.common.utils.JsonUtils;
import com.tata.dao.JedisClient;
import com.tata.mapper.BookClassifyIndexMapper;

import com.tata.pojo.BookClassifyIndex;
import com.tata.pojo.BookClassifyIndexExample;



@Service
public class BookClassifyIndexServiceImpl implements BookClassifyIndexService {

	@Autowired
	private BookClassifyIndexMapper bookClassifyIndexMapper;
	@Autowired
	private JedisClient jedisClient;
	@Value("${INDEX_BOOK_REDIS_KEY}")
	private String INDEX_BOOK_REDIS_KEY;
	
	//返回首页pojo
	@Override
	public List<BookClassifyIndex> getBookList() {
		
		//从缓存中取内容  使用redis
//		try {
//			String result = jedisClient.hget(INDEX_BOOK_REDIS_KEY, "1");
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
		
		//查询首页展示书籍列表
		BookClassifyIndexExample example = new BookClassifyIndexExample();
		List<BookClassifyIndex> list = bookClassifyIndexMapper.selectByExampleWithBLOBs(example);
		
		//向缓存中添加内容  把list转换成字符串  使用redis
//		try {
//			
//			String cacheString = JsonUtils.objectToJson(list);
//			jedisClient.hset(INDEX_BOOK_REDIS_KEY, "1", cacheString);
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
