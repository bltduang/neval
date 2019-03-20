package com.tata.service;

import com.blt.common.pojo.BltResult;

public interface RedisService {

	BltResult syncIndexBook(long id);
}
