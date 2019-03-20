package com.blt.service.impl;

import com.blt.pojo.BookClassify;
import com.blt.pojo.BookContent;

public interface BookContentService {

	void insertBookContent(BookContent bookContent)throws Exception;
	
	void insertBookClassify(BookClassify bookClassify)throws Exception;
}
