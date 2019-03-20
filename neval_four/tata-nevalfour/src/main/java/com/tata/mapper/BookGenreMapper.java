package com.tata.mapper;

import com.tata.pojo.BookGenre;
import com.tata.pojo.BookGenreExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface BookGenreMapper {
    int countByExample(BookGenreExample example);

    int deleteByExample(BookGenreExample example);

    int deleteByPrimaryKey(Long bookid);

    int insert(BookGenre record);

    int insertSelective(BookGenre record);

    List<BookGenre> selectByExampleWithBLOBs(BookGenreExample example);

    List<BookGenre> selectByExample(BookGenreExample example);

    BookGenre selectByPrimaryKey(Long bookid);

    int updateByExampleSelective(@Param("record") BookGenre record, @Param("example") BookGenreExample example);

    int updateByExampleWithBLOBs(@Param("record") BookGenre record, @Param("example") BookGenreExample example);

    int updateByExample(@Param("record") BookGenre record, @Param("example") BookGenreExample example);

    int updateByPrimaryKeySelective(BookGenre record);

    int updateByPrimaryKeyWithBLOBs(BookGenre record);

    int updateByPrimaryKey(BookGenre record);
}