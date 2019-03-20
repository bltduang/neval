package com.blt.controller;
import java.io.File;

public class ReadFile {

    /*
     * 读取指定路径下的文件名和目录名
     */
    public void getFileList() {
        File file = new File("C:\\Users\\luluhua\\Desktop\\a");
        
        File[] fileList = file.listFiles();
        
        for (int i = 0; i < fileList.length; i++) {
        	
        	//文件
            if (fileList[i].isFile()) {
                String fileName = fileList[i].getName();
                System.out.println(fileName);                
            }
            
            //如果是目录
            if (fileList[i].isDirectory()) {
                String fileName = fileList[i].getName();
                System.out.println("目录：" + fileName);        
            }
        }
    }
    
    public static void main(String[] args) {
        ReadFile rf = new ReadFile();
        rf.getFileList();
    }
}