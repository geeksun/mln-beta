package com.mln.bean;
import java.util.*;

/**
 * Description 分页BEAN
 * 2013-4-27
 * @author usr1999
 */
public class PageBean {
	public int currentPage;				
	public int totalPage;				
	public int totalRows;				
	public int rowsPage;			// show number of lines per page
	public ArrayList<?> data;
	
	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public int getTotalPage() {
		return totalPage;
	}

	public int getTotalRows() {
		return totalRows;
	}

	public void setTotalRows(int totalRows) {
		this.totalRows = totalRows;
	}

	public int getRowsPage() {
		return rowsPage;
	}

	public void setRowsPage(int rowsPage) {
		this.rowsPage = rowsPage;
	}

	public void setData(ArrayList<?> data) {
		this.data = data;
	}

	public void countTotalPage(){		
		if(totalRows%rowsPage==0){
			this.totalPage = totalRows/rowsPage;
		}
		else{
			this.totalPage = totalRows/rowsPage + 1;
		}
	}
	
	public ArrayList<?> getData(){			
		return data;
	}
	
}

