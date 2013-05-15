package com.mln.action;

import java.util.ArrayList;
import java.util.ResourceBundle;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mln.bean.PageBean;
import com.mln.bean.Product;
import com.mln.db.DBHandler;
import com.mln.util.PropertiesUtil;
import com.mln.util.StringUtil;

/**
 * Description show products
 * @author usr1999
 * 2013-4-30
 */
@Controller
@RequestMapping(value="product")
public class ProductCenter {
	// read config file, maybe be able to replace PropertiesUtil.getValue()
	public static ResourceBundle CONFIG = ResourceBundle.getBundle("config");
	
	/**
	 * If access "" path, should map this method
	 */
	@RequestMapping(value={"home", ""})
	public String home(Model model, HttpServletRequest request){
		String _fid = request.getParameter("fid");
		model.addAttribute("fid", _fid);
		
		return "products";
	}
	
	@SuppressWarnings("unchecked")
	@RequestMapping(value="list.data")
	public String data(Model model, HttpServletRequest request){
		// 外键ID
		String fid = request.getParameter("fid");
		// The font page search key word
		String keyword = request.getParameter("keyword");
		PageBean page = new PageBean();
		
		int rowsPage = Integer.parseInt(PropertiesUtil.getValue("rowsPage_product"));
		page.setRowsPage(rowsPage);
		try {
			String pageNo = request.getParameter("pageNo");
			
			if(StringUtil.isEmpty(pageNo)||pageNo.equals("0"))						// suppose 
				pageNo = "1";
			
			int pageNum = Integer.parseInt(pageNo);
			
			String count_sql = "select count(1) from product where 1=1";
			String data_sql = "select id id,name name,number number,bull_number bullNumber,en_name enName,tpi tpi,lnm lnm,";
			data_sql += "milk_production milkProduction,milk_life milkLife,description description,category_id categoryId,img_path imgPath from product where 1=1";
			
			if(!StringUtil.isEmpty(keyword)){
				count_sql += " and name like '%"+keyword+"%'";
				data_sql += " and name like '%"+keyword+"%'";
			}
			
			if(!StringUtil.isEmpty(fid)){
				count_sql += " and category_id=?";
				int totalRows = DBHandler.stat(count_sql, fid);
				page.setTotalRows(totalRows);
				
				data_sql += "  and category_id=?";
				data_sql += "  limit " + (pageNum-1)*rowsPage + "," + pageNum*rowsPage;
				
				ArrayList<Product> data = (ArrayList<Product>) DBHandler.queryBeanList(data_sql, Product.class, fid);
				page.setData(data);
			} else {
				int totalRows = DBHandler.stat(count_sql);
				page.setTotalRows(totalRows);
				
				data_sql += "  limit " + (pageNum-1)*rowsPage + "," + pageNum*rowsPage;
				
				ArrayList<Product> data = (ArrayList<Product>) DBHandler.queryBeanList(data_sql, Product.class);
				page.setData(data);
			}
			page.countTotalPage();
			page.setCurrentPage(pageNum);
			
			model.addAttribute("_page", page);
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		return "product/product-data";
	}
	
	/**
	 * Product description page made pseudo-static pages, in order to facilitate SEO 
	 */
	@SuppressWarnings("unchecked")
	@RequestMapping(value="{id}.html")
	public String info(@PathVariable("id") Integer id, Model model, HttpServletRequest request){
		String sql = "select id id,name name,number number,bull_number bullNumber,en_name enName,tpi tpi,lnm lnm,";
		sql += "milk_production milkProduction,milk_life milkLife,description description,category_id categoryId,img_path imgPath from product";
		sql += " where id=?";
		Product _info = (Product) DBHandler.queryBean(sql, Product.class, id);
		
		model.addAttribute("_info", _info);
		
		// MySQL查询当前ID的上一条和下一条记录
	    String last_sql = "SELECT id,name FROM product WHERE id IN (select max(id) from product where id < ?)";
	    Product _product_1 = (Product) DBHandler.queryBean(last_sql, Product.class, id);
		
		model.addAttribute("_product_1", _product_1);
		
		String next_sql = "SELECT id,name FROM product WHERE id IN (select min(id) from product where id > ?)";
		Product _product_2 = (Product) DBHandler.queryBean(next_sql, Product.class, id);
		
		model.addAttribute("_product_2", _product_2);	   

		return "product/info";
	}
	
}
