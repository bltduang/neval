package com.tata.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.blt.common.pojo.EUDataGridResult;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.tata.mapper.BookGenreMapper;
import com.tata.pojo.BookGenre;
import com.tata.pojo.BookGenreExample;
import com.tata.pojo.BookGenreExample.Criteria;

@Service
public class BookGenreServiceImpl implements BookGenreService {

	@Autowired
	private BookGenreMapper bookGenreMapper;
	
	//传入当前页数、查询条数、书籍类别  返回分页信息
	@Override
	public EUDataGridResult getBookCategoryList(int page, int rows, int bookCategory) {
		
		BookGenreExample example = new BookGenreExample();
		Criteria criteria = example.createCriteria();
//		criteria.andCategorycodeEqualTo(bookCategory);
		PageHelper.startPage(page, rows);
		List<BookGenre> list;

		if (bookCategory== 16) {
			criteria.andCategorycodeBetween(13, 16);
			list = bookGenreMapper.selectByExampleWithBLOBs(example);
		}else if(bookCategory== 449) {
			criteria.andCategorycodeBetween(444, 449);
			list = bookGenreMapper.selectByExampleWithBLOBs(example);
		}else if(bookCategory== 450) {
			criteria.andCategorycodeEqualTo(bookCategory);
			list = bookGenreMapper.selectByExampleWithBLOBs(example);
		}else if(bookCategory== 43) {
			criteria.andCategorycodeBetween(43, 49);
			list = bookGenreMapper.selectByExampleWithBLOBs(example);
		}else if(bookCategory== 40) {
			criteria.andCategorycodeBetween(35, 40);
			list = bookGenreMapper.selectByExampleWithBLOBs(example);
		}else if(bookCategory== 53) {
			criteria.andCategorycodeBetween(50, 53);
			list = bookGenreMapper.selectByExampleWithBLOBs(example);
		}else {
			criteria.andCategorycodeBetween(55, 443);
			list = bookGenreMapper.selectByExampleWithBLOBs(example);
		}

//		List<BookGenre> list = bookGenreMapper.selectByExample(example);

		EUDataGridResult result = new EUDataGridResult();
		//传入显示数据
		result.setRows(list);
		//传入数据总条数
		PageInfo<BookGenre> pageInfo = new PageInfo<>(list);
		result.setTotal(pageInfo.getTotal());
		//传入当前页码
		result.setCurpage(page);
		//传入当前页有多少条数据
		result.setPagerows(rows);
		//传入总页数
		int tot = (int) pageInfo.getTotal();
		int num = tot/rows;
		result.setPagenum(num);
		//传入当前页第一条数据的行数
		int curdate = (page-1) * rows + 1;
		result.setCurdate(curdate);
		
		return result;
	}

	//传入当前类别，返回该类别列表
	@Override
	public List<BookGenre> getBookCategory(int bookCategory) {
		
		BookGenreExample example = new BookGenreExample();
		Criteria criteria = example.createCriteria();
		
		List<BookGenre> list;

		if (bookCategory== 16) {
			criteria.andCategorycodeBetween(13, 16);
			list = bookGenreMapper.selectByExample(example);
		}else if(bookCategory== 449) {
			criteria.andCategorycodeBetween(444, 449);
			list = bookGenreMapper.selectByExample(example);
		}else if(bookCategory== 450) {
			criteria.andCategorycodeEqualTo(bookCategory);
			list = bookGenreMapper.selectByExample(example);
		}else if(bookCategory== 43) {
			criteria.andCategorycodeBetween(43, 49);
			list = bookGenreMapper.selectByExample(example);
		}else if(bookCategory== 40) {
			criteria.andCategorycodeBetween(35, 40);
			list = bookGenreMapper.selectByExample(example);
		}else if(bookCategory== 53) {
			criteria.andCategorycodeBetween(50, 53);
			list = bookGenreMapper.selectByExample(example);
		}else {
			criteria.andCategorycodeBetween(55, 443);
			list = bookGenreMapper.selectByExample(example);
		}

		return list;
	}

}
