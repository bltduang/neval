package com.blt.portal.service;

import java.util.ArrayList;
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
import com.blt.pojo.BookContent;

@Service
public class BookContentServiceImpl implements BookContentService {

	@Value("${REST_BASE_URL}")
	private String REST_BASE_URL;
	
	@Value("${REST_BOOKCONTENT}")
	private String REST_BOOKCONTENT;
	
	@Value("${REST_BOOKCACTICLE}")
	private String REST_BOOKCACTICLE;
	
	
	//返回特定 通过digest查询 章节详细内容信息
	@Override
	public String getBookContent(String digest) {
		
		String result = HttpClientUtil.doGet(REST_BASE_URL+REST_BOOKCONTENT+"/"+digest);
		try {
			BltResult bltResult = BltResult.formatToPojo(result, BookContent.class);
			BookContent bookContent = (BookContent) bltResult.getData();
			
			Map map = new HashMap<>();
			map.put("digest",bookContent.getDigest() );
			
			//对内容段落换行、添加缩减
			String contentString = bookContent.getContent();
//			contentString = contentString.replaceFirst("<br />", "<p>");
			contentString = contentString.replaceAll("<br />", "<br>&nbsp;&nbsp;&nbsp;&nbsp;");
//			contentString = contentString+"</p>";
			
			
			map.put("content",contentString);
			map.put("idx",bookContent.getIdx() );
			map.put("size",bookContent.getSize() );
				
			return JsonUtils.objectToJson(map);
			
		} catch (Exception e) {
			System.out.println("本章节信息录入错误");
			e.printStackTrace();
			BookContent bookContent = new BookContent();
			bookContent.setDigest("000134c8f7544ec7bbc6066899b608e8");
			bookContent.setContent("本章内容加载失败，请等待更新");
			bookContent.setIdx(1);
			
			return JsonUtils.objectToJson(bookContent);
			
		}
		
	}

	//通过digest查询本章相关（包含下一章、上一章的检索id）
	@Override
	public String getBookActicle(String digest) {
		
		String result = HttpClientUtil.doGet(REST_BASE_URL+REST_BOOKCACTICLE+"/"+digest);
		try {
			BltResult bltResult = BltResult.formatToList(result, BookActicle.class);
			List<BookActicle> list = (List<BookActicle>) bltResult.getData();
			
			Map map = new HashMap<>();
			for (int i=0;i<list.size();i++) {
				if (digest.equals(list.get(i).getDigest())) {
					map.put("bookid",list.get(i).getBookid());
					map.put("bookuuid", list.get(i).getBookuuid());
					map.put("digest", list.get(i).getDigest());
					map.put("idx", list.get(i).getIdx());
					map.put("title", list.get(i).getTitle());
					map.put("id", list.get(i).getId());
					if(list.get(i).getIdx()==1){
						map.put("syz", list.get(i).getDigest());
						map.put("xyz", list.get(i+1).getDigest());
					}else{
						if(list.get(i-1).getDigest()!=null){
							map.put("syz", list.get(i-1).getDigest());
							map.put("xyz", list.get(i).getDigest());
						}else{
							map.put("syz", list.get(i).getDigest());
						}
						if (i < list.size()-1 ) {
							if(list.get(i+1).getDigest()!=null ){
								map.put("xyz", list.get(i+1).getDigest());
							}else {
								map.put("xyz", list.get(i).getDigest());
							}
						}
					}
				}
			}
				
			return JsonUtils.objectToJson(map);
			
		} catch (Exception e) {
			e.printStackTrace();
			
		}
		return null;
	}

}
