package com.mln.action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mln.bean.Download;
import com.mln.bean.PageBean;
import com.mln.db.DBHandler;
import com.mln.util.PropertiesUtil;
import com.mln.util.StringUtil;

/**
 * Description Download Center
 * @author usr1999
 * 2013-5-5
 */
@Controller
@RequestMapping(value="download")
public class DownloadCenter {
	
	@RequestMapping(value="")
	public String download(Model model, HttpServletRequest request){
		String cid = request.getParameter("cid");
		model.addAttribute("cid", cid);
		
		return "download";
	}
	
	@SuppressWarnings("unchecked")
	@RequestMapping(value="list.data")
	public String list(Model model, HttpServletRequest request){
		String cid = request.getParameter("cid");
		
		String pageNo = request.getParameter("pageNo");
		
		if(StringUtil.isEmpty(pageNo)||pageNo.equals("0"))						// suppose 
			pageNo = "1";
		
		int pageNum = Integer.parseInt(pageNo);
		
		PageBean page = new PageBean();
		int rowsPage = Integer.parseInt(PropertiesUtil.getValue("rowsPage_standard"));
		page.setRowsPage(rowsPage);
		
		String count_sql = "select count(1) from download";
		String data_sql = "select id,name from download";
		
		if(!StringUtil.isEmpty(cid)){
			count_sql += " where category_id=?";
			int totalRows = DBHandler.stat(count_sql, cid);
			page.setTotalRows(totalRows);
			
			data_sql += " where category_id=?";
			data_sql += "  limit " + (pageNum-1)*rowsPage + "," + pageNum*rowsPage;
			
			ArrayList<Download> data = (ArrayList<Download>) DBHandler.queryBeanList(data_sql, Download.class, cid);
			page.setData(data);
		} else {
			int totalRows = DBHandler.stat(count_sql);
			page.setTotalRows(totalRows);
			
			data_sql += "  limit " + (pageNum-1)*rowsPage + "," + pageNum*rowsPage;
			
			ArrayList<Download> data = (ArrayList<Download>) DBHandler.queryBeanList(data_sql, Download.class);
			page.setData(data);
		}
		page.countTotalPage();
		page.setCurrentPage(pageNum);
		
		model.addAttribute("cid", cid);
		model.addAttribute("_page", page);
		
		return "download/data";
	}
	
	/**
	 * Single case detail info
	 */
	@RequestMapping(value="{id}.html")
	public String info(@PathVariable("id") Integer id, Model model){
		String sql = "select id,name,content,link from download where id=?";
		Download _info = (Download) DBHandler.queryBean(sql, Download.class, id);
		
		model.addAttribute("_info", _info);
		
		return "download/_info";
	}
	
}
