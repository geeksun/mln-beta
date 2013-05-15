package com.mln.action.admin;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mln.bean.ProductCategory;
import com.mln.db.DBHandler;

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
	public String productCategory(){
		String _sql = "select * from product_category";
		List<ProductCategory> _list = (List<ProductCategory>) DBHandler.queryBeanList(_sql, ProductCategory.class);
		StringBuilder _bd = new StringBuilder();
		
		Map<ProductCategory, List<ProductCategory>> m = new HashMap<ProductCategory, List<ProductCategory>>();
		for(ProductCategory p:_list){
			ProductCategory _p = null;
			if(p.getPid().equals("0")){
				_p = p;
				String _id = _p.getId();
				List<ProductCategory> _l = new ArrayList<ProductCategory>();
				for(ProductCategory p2:_list){
					if(p2.getPid().equals(_id)){
						_l.add(p2);
					}
				}
				m.put(_p, _l);
			}
		}
		
		
		for(ProductCategory p:_list){
			String id = null ;
			if(p.getPid().equals("0")){
				id = p.getId();
				_bd.append("<li>");
				_bd.append("<a href='/product?fid=");
				_bd.append(id);
				_bd.append("'>");
				_bd.append(p.getName());
				_bd.append("</a>");
				_bd.append("<ul>");
			} else if(p.getPid().equals(id)){
				_bd.append("<li>");
				_bd.append("<a href='/product?fid=");
				_bd.append(p.getId());
				_bd.append("'>");
				_bd.append(p.getName());
				_bd.append("</a>");
				_bd.append("</li>");
			}
			
		}
		
		
		
		
		
		
		return "admin/static_html";
	}
	
	
	
	

}
