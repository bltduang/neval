package com.blt.controller;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;

import org.apache.ibatis.io.ResolverUtil.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.blt.common.utils.JsonUtils;
import com.blt.common.utils.Program;
import com.blt.pojo.BookContent;
import com.blt.service.impl.BookContentService;
//import com.blt.service.impl.writetableService;

@Controller
public class readtxt {
	
	@Autowired
	private BookContentService bookContentService;

	//读文件，返回字符串
	public String ReadFile(String path){
	    File file = new File(path);
	    BufferedReader reader = null;
	    String laststr = "";
	    try {
	     //System.out.println("以行为单位读取文件内容，一次读一整行：");
	     reader = new BufferedReader(new FileReader(file));
	     String tempString = null;
	     int line = 1;
	     //一次读入一行，直到读入null为文件结束
	     while ((tempString = reader.readLine()) != null) {
	    	 
	    tempString = tempString.replaceAll("(\r\n)", "<br />");
	    
	      //显示行号及内容
//	      System.out.println("line "+line+": "+tempString);
	      laststr = laststr+tempString;
//	      laststr = laststr.replaceAll("(\r\n)", "<br />");
	      line ++;
	     }
	     reader.close();
	    } catch (IOException e) {
	     e.printStackTrace();
	    } finally {
	     if (reader != null) {
	      try {
	       reader.close();
	      } catch (IOException e1) {
	      }
	     }
	    }
	    //输出txt文件内容
//	    System.out.println(laststr);
	    return laststr;
	}
	
//	取出文件内容，填充对象
	public BookContent findBookContent(String path){
		
	   BookContent bookContent = new BookContent();
	 
	   //获得json文件的内容
	   String sets=ReadFile(path);
//	   System.out.println(sets);

	   sets = sets.replaceAll("(\\\\r\\\\n)", "<br />");
//	   System.out.println(sets);
	   
	   //格式化成pojo对象
	   BookContent content = JsonUtils.jsonToPojo(sets, BookContent.class);
	   bookContent.setDigest(content.getDigest());
	   bookContent.setContent(content.getContent());
	   bookContent.setIdx(content.getIdx());
	   bookContent.setBookuuid(content.getBookuuid());
	   bookContent.setSource(content.getSource());
	   bookContent.setStatus(content.getStatus());
	   bookContent.setBookid(content.getBookid());
	   bookContent.setSize(content.getSize());
	   
//	   System.out.println("Digest:"+content.getIdx());
	   
	   return bookContent;
	}
	
	//调用填充对象方法，遍历文件路径，将数据录入数据库
    private void getFile(String path,int deep){
        // 获得指定文件对象  
        File file = new File(path);   
        // 获得该文件夹内的所有文件   
        File[] array = file.listFiles();   

        for(int i=0;i<array.length;i++)
        {   
        //调用填充对象方法，填充路径
           BookContent bookContent = findBookContent(array[i].getPath());
           //插入数据库
           try {
			bookContentService.insertBookContent(bookContent);
			} catch (Exception e) {
				e.printStackTrace();
			}
           System.out.println(i);
        }
    }
    
	
	@RequestMapping("/write")
	@ResponseBody
	public String getBookContent() throws Exception {
		String path = "C:\\Users\\luluhua\\Desktop\\a";
		getFile(path, 0);
		return "录入完成";
	}

//	http://localhost:8080/write

}
