package com.tata.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.blt.common.pojo.BltResult;
import com.tata.service.RedisService;

@Controller
public class RedisController {

	@Autowired
	private RedisService redisService;
	
	@RequestMapping("/cache/sync/{id}")
	@ResponseBody
	public BltResult indexCacheSync(@PathVariable Long id) {
		BltResult result = redisService.syncIndexBook(id);
		return result;
	}
}
