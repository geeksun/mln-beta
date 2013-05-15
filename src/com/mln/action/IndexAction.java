package com.mln.action;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mln.bean.ProductCategory;
import com.mln.service.ProductService;

/**
 * Description 网站首页
 * 2013-4-19
 * @author 11
 */
@Controller
public class IndexAction {
	
	private ProductService productService;
	
	@Resource(name="productService")
	public void setProductService(ProductService productService) {
		this.productService = productService;
	}

	@RequestMapping(value={"index", ""})
	public String index(){
		List<ProductCategory> list = productService.queryCategorys();
		
		for(ProductCategory g:list){
			List<ProductCategory> _list;
			if(g.getPid().equals("0")){
				_list = new ArrayList<ProductCategory>();
				_list.add(g);
				String categoryId = g.getId();
				List _temp_list = new ArrayList();
				
			}
		}
		
		return "index";
	}

}
