package com.mln.action.admin;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mln.bean.ProductCategory;
import com.mln.db.DBHandler;
import com.mln.util.PropertiesUtil;
import com.mln.util.StringUtil;

/**
 * Description Generate Static Html
 * 2013-5-13
 * @author usr1999
 */
@Controller
@RequestMapping(value="/static/html")
public class StatciHtml {
	
	@RequestMapping(value="{id}")
	public String index(@PathVariable String id, Model model){
		model.addAttribute("id", id);
		
		return "admin/static_html";
	}
	
	/**
	 * 生成产品种类静态页,path:/html/product/category.htm
	 */
	@SuppressWarnings("unchecked")
	@RequestMapping(value="productCategory")
	public String productCategory(HttpServletRequest request, Model model){
		String _sql = "select * from product_category";
		List<ProductCategory> _list = (List<ProductCategory>) DBHandler.queryBeanList(_sql, ProductCategory.class);
		StringBuilder _bd = new StringBuilder();
		
		
		List<ProductCategory> _list_1 = new ArrayList<ProductCategory>();
		for(ProductCategory p:_list){
			//  one level menu
			if(p.getPid().equals("0")){
				_list_1.add(p);
			}
		}
		
		Map<ProductCategory, List<ProductCategory>> _map_2 = new HashMap<ProductCategory, List<ProductCategory>>();
		List<ProductCategory> _list_2 = null;
		for(ProductCategory p:_list_1){
			_list_2 = new ArrayList<ProductCategory>();
			String id = p.getId();
			for(ProductCategory p2:_list){
				if(p2.getPid().equals(id)){
					_list_2.add(p2);
				}
			}
			_map_2.put(p, _list_2);
		}
		
		for(ProductCategory p:_list_1){
			_bd.append("<li>");
			_bd.append("<a href='/product?fid=");
			_bd.append(p.getId());
			_bd.append("'>");
			_bd.append(p.getName());
			_bd.append("</a>");
			_bd.append("<ul>");
			_list_2 = _map_2.get(p);
			for(ProductCategory _p2:_list_2){
				_bd.append("<li>");
				_bd.append("<a href='/product?fid=");
				_bd.append(_p2.getId());
				_bd.append("'>");
				_bd.append(_p2.getName());
				_bd.append("</a>");
				_bd.append("</li>");
			}
			_bd.append("</ul>");
			_bd.append("</li>");
		}
		
		//System.out.println(_bd.toString());
		@SuppressWarnings("deprecation")
		String filePath = request.getRealPath("")+"/html/product/category.htm";
		StringUtil.generateHtml(filePath, _bd.toString());
		model.addAttribute("id", PropertiesUtil.getValue("productCategory"));
		
		return "admin/pub/_operate_status";
	}
	
	/**
	 * 新闻菜单
	 */
	@RequestMapping(value="newsMenu")
	public String newsMenu(HttpServletRequest request, Model model){
		
		return "";
	}

}
