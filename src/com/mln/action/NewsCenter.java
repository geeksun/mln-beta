package com.mln.action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mln.bean.PageBean;
import com.mln.bean.News;
import com.mln.db.DBHandler;
import com.mln.util.PropertiesUtil;
import com.mln.util.StringUtil;

/**
 * Description 新闻中心
 * 2013-4-24
 * @author usr1999
 */
@Controller
@RequestMapping(value="news")
public class NewsCenter {
	
	/**
	 * 新闻中心
	 */
	@RequestMapping(value="")
	public String news(Model model, HttpServletRequest request){
		String num = request.getParameter("num");
		model.addAttribute("num", num);
		
		return "news";
	}
	
	/**
	 * 新闻中心-ajax数据
	 */
	@SuppressWarnings("unchecked")
	@RequestMapping(value="list.data")
	public String data(Model model, HttpServletRequest request){
		String num = request.getParameter("_num");
		PageBean page = new PageBean();
		
		int rowsPage = Integer.parseInt(PropertiesUtil.getValue("rowsPage_standard"));
		page.setRowsPage(rowsPage);
		try {
			String jumpPage = request.getParameter("pageNo");
			
			if(StringUtil.isEmpty(jumpPage)||jumpPage.equals("0"))						// suppose 
				jumpPage = "1";
			
			int pageNum = Integer.parseInt(jumpPage);
			
			String count_sql = "select count(1) from news";
			String data_sql = "select id id,title title,summary summary,content content,category_no categoryNo,time time from news";
			if(!StringUtil.isEmpty(num)){
				count_sql += " where category_No = ?";
				int totalRows = DBHandler.stat(count_sql, num);
				page.totalRows = totalRows;
				
				data_sql += " where category_No = ?";
				data_sql += " limit "+page.rowsPage*(pageNum-1)+","+page.rowsPage;
				
				ArrayList<News> data = (ArrayList<News>) DBHandler.queryBeanList(data_sql, News.class, num);
				page.data = data;
			} else {
				int totalRows = DBHandler.stat(count_sql);
				page.totalRows = totalRows;
				
				data_sql += " limit "+page.rowsPage*(pageNum-1)+","+page.rowsPage;
				ArrayList<News> data = (ArrayList<News>) DBHandler.queryBeanList(data_sql, News.class);
				page.data = data;
			}
			
			page.countTotalPage();
			page.currentPage = pageNum;
			
			request.setAttribute("_page", page);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		model.addAttribute("_num", num);
		
		return "/news/news-data";
	}
	
	/**
	 * News description page made pseudo-static pages, in order to facilitate SEO 
	 */
	@SuppressWarnings("unchecked")
	@RequestMapping(value="{id}.html")
	public String info(@PathVariable Integer id, Model model, HttpServletRequest request){
		String sql = "select id id,title title,summary summary,content content,category_no categoryNo,time time from news";
		sql += " where id=?";
		News _info = (News) DBHandler.queryBean(sql, News.class, id);
		
		model.addAttribute("_info", _info);
		
		// MySQL查询当前ID的上一条和下一条记录
		String last_sql = "SELECT id,title FROM news WHERE id IN (select max(id) from news where id < ?)";
		News _news_1 = (News) DBHandler.queryBean(last_sql, News.class, id);
		
		model.addAttribute("_news_1", _news_1);
		
		String next_sql = "SELECT id,title FROM news WHERE id IN (select min(id) from news where id > ?)";
		News _news_2 = (News) DBHandler.queryBean(next_sql, News.class, id);
		
		model.addAttribute("_news_2", _news_2);

		return "news/_info";
	}
	
}
