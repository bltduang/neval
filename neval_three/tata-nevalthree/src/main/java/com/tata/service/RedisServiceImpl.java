package com.tata.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import com.blt.common.pojo.BltResult;
import com.blt.common.utils.ExceptionUtil;
import com.tata.dao.JedisClient;

@Service
public class RedisServiceImpl implements RedisService {

	@Autowired
	private JedisClient jedisClient;
	@Value("${INDEX_BOOK_REDIS_KEY}")
	private String INDEX_BOOK_REDIS_KEY;
	
	@Override
	public BltResult syncIndexBook(long id) {
		
		try {
			jedisClient.hdel(INDEX_BOOK_REDIS_KEY, "1");
		} catch (Exception e) {
			e.printStackTrace();
			return BltResult.build(500, ExceptionUtil.getStackTrace(e));
		}
		return BltResult.ok();
	}

}
