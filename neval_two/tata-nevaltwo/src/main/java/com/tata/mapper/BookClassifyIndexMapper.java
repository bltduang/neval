package com.tata.mapper;

import com.tata.pojo.BookClassifyIndex;
import com.tata.pojo.BookClassifyIndexExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface BookClassifyIndexMapper {
    int countByExample(BookClassifyIndexExample example);

    int deleteByExample(BookClassifyIndexExample example);

    int deleteByPrimaryKey(Long id);

    int insert(BookClassifyIndex record);

    int insertSelective(BookClassifyIndex record);

    List<BookClassifyIndex> selectByExampleWithBLOBs(BookClassifyIndexExample example);

    List<BookClassifyIndex> selectByExample(BookClassifyIndexExample example);

    BookClassifyIndex selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") BookClassifyIndex record, @Param("example") BookClassifyIndexExample example);

    int updateByExampleWithBLOBs(@Param("record") BookClassifyIndex record, @Param("example") BookClassifyIndexExample example);

    int updateByExample(@Param("record") BookClassifyIndex record, @Param("example") BookClassifyIndexExample example);

    int updateByPrimaryKeySelective(BookClassifyIndex record);

    int updateByPrimaryKeyWithBLOBs(BookClassifyIndex record);

    int updateByPrimaryKey(BookClassifyIndex record);
}