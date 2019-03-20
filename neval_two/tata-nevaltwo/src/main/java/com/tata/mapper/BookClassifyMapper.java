package com.tata.mapper;

import com.tata.pojo.BookClassify;
import com.tata.pojo.BookClassifyExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface BookClassifyMapper {
    int countByExample(BookClassifyExample example);

    int deleteByExample(BookClassifyExample example);

    int deleteByPrimaryKey(Long id);

    int insert(BookClassify record);

    int insertSelective(BookClassify record);

    List<BookClassify> selectByExampleWithBLOBs(BookClassifyExample example);

    List<BookClassify> selectByExample(BookClassifyExample example);

    BookClassify selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") BookClassify record, @Param("example") BookClassifyExample example);

    int updateByExampleWithBLOBs(@Param("record") BookClassify record, @Param("example") BookClassifyExample example);

    int updateByExample(@Param("record") BookClassify record, @Param("example") BookClassifyExample example);

    int updateByPrimaryKeySelective(BookClassify record);

    int updateByPrimaryKeyWithBLOBs(BookClassify record);

    int updateByPrimaryKey(BookClassify record);
}