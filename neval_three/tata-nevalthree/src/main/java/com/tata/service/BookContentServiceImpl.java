package com.tata.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tata.mapper.BookActicleMapper;
import com.tata.mapper.BookClassifyMapper;
import com.tata.mapper.BookContentMapper;
import com.tata.pojo.BookActicle;
import com.tata.pojo.BookActicleExample;
import com.tata.pojo.BookActicleExample.Criteria;
import com.tata.pojo.BookClassify;
import com.tata.pojo.BookContent;

@Service
public class BookContentServiceImpl implements BookContentService {

	@Autowired
	private BookContentMapper bookContentMapper;
	
	@Autowired
	private BookActicleMapper bookActicleMapper;
	
	@Autowired
	private BookClassifyMapper bookClassifyMapper;
	
	//查询本章内容
	@Override
	public BookContent getBookContent(String digest) {
		try {
			BookContent content = bookContentMapper.selectByPrimaryKey(digest);
			//对内容段落换行、添加缩减
			String contentString = content.getContent();
//			contentString = contentString.replaceFirst("<br />", "<p>");
			contentString = contentString.replaceAll("<br />", "<br>&nbsp;&nbsp;&nbsp;&nbsp;");
			content.setContent(contentString);
//			contentString = contentString+"</p>";
			return content;
		} catch (Exception e) {
			BookContent bookContent = new BookContent();
			bookContent.setDigest("000134c8f7544ec7bbc6066899b608e8");
			bookContent.setContent("本章内容加载失败，请等待更新");
			bookContent.setIdx(1);
			return bookContent;
		}
	}

	//查询本书所有章节 后返回需要的信息
	@Override
	public Map getBookActicle(String digest) {
		BookActicleExample example = new BookActicleExample();
		Criteria criteria = example.createCriteria();
		criteria.andDigestEqualTo(digest);
		//只查询到本书的一个章节
		List<BookActicle> list = bookActicleMapper.selectByExample(example);
		BookActicle bookActicle = new BookActicle();
		for (BookActicle bookActicle1 : list) {
			bookActicle.setBookid(bookActicle1.getBookid());

		}
		
		BookActicleExample example1 = new BookActicleExample();
		Criteria criteria1 = example1.createCriteria();
		criteria1.andBookidEqualTo(bookActicle.getBookid());
		//查询到本书的所有章节   返回章节列表
		List<BookActicle> list2 = bookActicleMapper.selectByExample(example1);
		
		//返回一个包含本书信息的Map
		Map map = new HashMap<>();
		for (int i=0;i<list2.size();i++) {
			if (digest.equals(list2.get(i).getDigest())) {
				
				BookClassify bookClassify = bookClassifyMapper.selectByPrimaryKey(list2.get(i).getBookid());
				map.put("booktitle", bookClassify.getTitle());
				map.put("author",bookClassify.getAuthor());
				map.put("category",bookClassify.getCategory());
				
				map.put("bookid",list2.get(i).getBookid());
				map.put("bookuuid", list2.get(i).getBookuuid());
				map.put("digest", list2.get(i).getDigest());
				map.put("idx", list2.get(i).getIdx());
				map.put("title", list2.get(i).getTitle());
				map.put("id", list2.get(i).getId());
				if(list2.get(i).getIdx()==1){
					map.put("syz", list2.get(i).getDigest());
					map.put("xyz", list2.get(i+1).getDigest());
				}else{
					if(list2.get(i-1).getDigest()!=null){
						map.put("syz", list2.get(i-1).getDigest());
						map.put("xyz", list2.get(i).getDigest());
					}else{
						map.put("syz", list2.get(i).getDigest());
					}
					if (i < list2.size()-1 ) {
						if(list2.get(i+1).getDigest()!=null ){
							map.put("xyz", list2.get(i+1).getDigest());
						}else {
							map.put("xyz", list2.get(i).getDigest());
						}
					}
				}
			}
		}
		
		return map;
	}

}
