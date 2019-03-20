package com.blt.common.pojo;

import java.util.List;

public class EUDataGridResult {
	private long total;		//总条数
	private int pagenum;	//总页数
	private int curpage;	//当前页码
	private int pagerows;	//当前页有多少条数据
	private int	curdate;	//当前页第一条数据的行数
	private List<?> rows;	//当前页要显示的数据
	
	public int getCurpage() {
		return curpage;
	}
	public int getCurdate() {
		return curdate;
	}
	public void setCurdate(int curdate) {
		this.curdate = curdate;
	}
	public void setCurpage(int curpage) {
		this.curpage = curpage;
	}
	public int getPagenum() {
		return pagenum;
	}
	public void setPagenum(int pagenum) {
		this.pagenum = pagenum;
	}
	public int getPagerows() {
		return pagerows;
	}
	public void setPagerows(int pagerows) {
		this.pagerows = pagerows;
	}
	public long getTotal() {
		return total;
	}
	public void setTotal(long total) {
		this.total = total;
	}
	public List<?> getRows() {
		return rows;
	}
	public void setRows(List<?> rows) {
		this.rows = rows;
	}
	
}
