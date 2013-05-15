package com.mln.action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mln.bean.Cases;
import com.mln.bean.PageBean;
import com.mln.db.DBHandler;
import com.mln.util.PropertiesUtil;
import com.mln.util.StringUtil;

/**
 * Description Sucess cases
 * 2013-5-3
 * @author usr1999
 */
@Controller
@RequestMapping(value="cases")
public class CasesCenter {
	
	@RequestMapping(value="")
	public String cases(Model model, HttpServletRequest request){
		String cid = request.getParameter("cid");
		model.addAttribute("cid", cid);
		
		return "cases";
	}
	
	@SuppressWarnings("unchecked")
	@RequestMapping(value="list.data")
	public String list(Model model, HttpServletRequest request){
		// Case corresponds to the product category ID
		String cid = request.getParameter("cid");
		
		String pageNo = request.getParameter("pageNo");
		
		if(StringUtil.isEmpty(pageNo)||pageNo.equals("0"))						// suppose 
			pageNo = "1";
		
		int pageNum = Integer.parseInt(pageNo);
		
		PageBean page = new PageBean();
		int rowsPage = Integer.parseInt(PropertiesUtil.getValue("rowsPage_cases"));
		page.setRowsPage(rowsPage);
		
		String count_sql = "select count(1) from cases";
		String data_sql = "select id id,name name,customer_id customerId,content content,category_id categoryId,img_path imgPath from cases";
		
		if(!StringUtil.isEmpty(cid)){
			count_sql += " where category_id=?";
			int totalRows = DBHandler.stat(count_sql, cid);
			page.setTotalRows(totalRows);
			
			data_sql += " where category_id=?";
			data_sql += "  limit " + (pageNum-1)*rowsPage + "," + pageNum*rowsPage;
			
			ArrayList<Cases> data = (ArrayList<Cases>) DBHandler.queryBeanList(data_sql, Cases.class, cid);
			page.setData(data);
		} else {
			int totalRows = DBHandler.stat(count_sql);
			page.setTotalRows(totalRows);
			
			data_sql += "  limit " + (pageNum-1)*rowsPage + "," + pageNum*rowsPage;
			
			ArrayList<Cases> data = (ArrayList<Cases>) DBHandler.queryBeanList(data_sql, Cases.class);
			page.setData(data);
		}
		page.countTotalPage();
		page.setCurrentPage(pageNum);
		
		model.addAttribute("_page", page);
		
		return "cases/cases-data";
	}
	
	
	/**
	 * Single case detail info
	 */
	@RequestMapping(value="{id}")
	public String info(@PathVariable("id") Integer id, Model model){
		String sql = "select id id,name name,customer_id customerId,content content,category_id categoryId,img_path imgPath from cases where id=?";
		Cases _info = (Cases) DBHandler.queryBean(sql, Cases.class, id);
		
		model.addAttribute("_info", _info);
		
		return "cases/info";
	}

}
