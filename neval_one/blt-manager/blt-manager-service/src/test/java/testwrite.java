import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;

import org.junit.BeforeClass;
import org.junit.Test;

import com.blt.common.utils.JsonUtils;
import com.blt.pojo.BookContent;

public class testwrite {

//	@Autowired
//	private writetableService writetable;
	
	@BeforeClass
	public static void setUpBeforeClass() throws Exception {
		
	}
	
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
	      //显示行号
	      System.out.println("line "+line+": "+tempString);
	      laststr = laststr+tempString;
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
	    return laststr;
	}
	
	public BookContent findElectSet(String path){
		   BookContent bookContent = new BookContent();
		 //获得json文件的内容
		   String sets=ReadFile(path);
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
		   
//		   writetableServiceImpl writetable = new writetableServiceImpl();
//		   writetable.writetable(bookContent);
		   
		   return bookContent;
		}

	@Test
	public void test() {
		try {
			findElectSet("C:\\Users\\luluhua\\Desktop\\b\\1158828885.txt");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
