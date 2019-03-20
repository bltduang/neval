package com.blt.mapper;

import com.blt.pojo.BookActicle;
import com.blt.pojo.BookActicleExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface BookActicleMapper {
    int countByExample(BookActicleExample example);

    int deleteByExample(BookActicleExample example);

    int deleteByPrimaryKey(Long id);

    int insert(BookActicle record);

    int insertSelective(BookActicle record);

    List<BookActicle> selectByExample(BookActicleExample example);

    BookActicle selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") BookActicle record, @Param("example") BookActicleExample example);

    int updateByExample(@Param("record") BookActicle record, @Param("example") BookActicleExample example);

    int updateByPrimaryKeySelective(BookActicle record);

    int updateByPrimaryKey(BookActicle record);
}