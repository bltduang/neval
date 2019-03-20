package com.tata.mapper;

import com.tata.pojo.BookContent;
import com.tata.pojo.BookContentExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface BookContentMapper {
    int countByExample(BookContentExample example);

    int deleteByExample(BookContentExample example);

    int deleteByPrimaryKey(String digest);

    int insert(BookContent record);

    int insertSelective(BookContent record);

    List<BookContent> selectByExampleWithBLOBs(BookContentExample example);

    List<BookContent> selectByExample(BookContentExample example);

    BookContent selectByPrimaryKey(String digest);

    int updateByExampleSelective(@Param("record") BookContent record, @Param("example") BookContentExample example);

    int updateByExampleWithBLOBs(@Param("record") BookContent record, @Param("example") BookContentExample example);

    int updateByExample(@Param("record") BookContent record, @Param("example") BookContentExample example);

    int updateByPrimaryKeySelective(BookContent record);

    int updateByPrimaryKeyWithBLOBs(BookContent record);

    int updateByPrimaryKey(BookContent record);
}