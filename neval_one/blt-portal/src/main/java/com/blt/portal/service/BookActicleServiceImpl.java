package com.blt.portal.service;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import com.blt.common.pojo.BltResult;
import com.blt.common.utils.HttpClientUtil;
import com.blt.common.utils.JsonUtils;
import com.blt.pojo.BookActicle;
import com.blt.pojo.BookClassify;

import sun.security.action.PutAllAction;

@Service
public class BookActicleServiceImpl implements BookActicleService {

	@Value("${REST_BASE_URL}")
	private String REST_BASE_URL;
	
	@Value("${REST_BOOKACTICLE}")
	private String REST_BOOKACTICLE;
	
	@Value("${REST_BOOKCLASSIFY}")
	private String REST_BOOKCLASSIFY;
	
	
	//通过httpclient  传入书籍id 返回本书章节列表
	@Override
	public String getBookActicle(Long bookid) {

		String result = HttpClientUtil.doGet(REST_BASE_URL+REST_BOOKACTICLE+"/"+bookid);
		try {
			BltResult bltResult = BltResult.formatToList(result, BookActicle.class);
			List<BookActicle> list = (List<BookActicle>) bltResult.getData();
			List<Map> resultList = new ArrayList<>();
			for (BookActicle bookActicle : list) {
				Map map = new HashMap<>();
				map.put("id", bookActicle.getId());
				map.put("digest", bookActicle.getDigest());
				map.put("idx", bookActicle.getIdx());
				map.put("title", bookActicle.getTitle());
				resultList.add(map);
			}
			return JsonUtils.objectToJson(resultList);
		} catch (Exception e) {
			e.printStackTrace();
			
		}
		
		return null;
	}

	//通过httpclient  传入书籍id 返回本书信息
	@Override
	public String getBookClassify(Long bookid) {
			
		String result = HttpClientUtil.doGet(REST_BASE_URL+REST_BOOKCLASSIFY+"/"+bookid);
		try {
			BltResult bltResult = BltResult.formatToPojo(result, BookClassify.class);
			BookClassify bookClassify = (BookClassify) bltResult.getData();
			
			Map map = new HashMap<>();
			map.put("bookid", bookClassify.getId());
			map.put("booktitle",bookClassify.getTitle());
			map.put("subtitle", bookClassify.getSubtitle());
			map.put("category",bookClassify.getCategory());
			map.put("author", bookClassify.getAuthor());
			
			SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			Date date = new Date(bookClassify.getUpdatetime());
			String updatetime = simpleDateFormat.format(date);
			map.put("updatetime", updatetime);
			
			map.put("imgurl",bookClassify.getImgurl());
			map.put("chapternum",bookClassify.getChapternum());
			return JsonUtils.objectToJson(map);
			
		} catch (Exception e) {
			e.printStackTrace();
			
		}
		
		return null;
	}

}
