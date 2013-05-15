package com.mln.service;

import java.util.List;
import javax.annotation.Resource;

import com.mln.bean.ProductCategory;
import com.mln.dao.ProductCategoryDao;

import org.springframework.stereotype.Component;

@Component
public class ProductService {
	
	private ProductCategoryDao productCategoryDao;
	
	@Resource(name="productCategoryDao")
	public void setBaseDao(ProductCategoryDao productCategoryDao)
	{
		this.productCategoryDao = productCategoryDao;
	}

	/**
	 * @return 查询所有产品种类
	 */
	public List<ProductCategory> queryCategorys() {
		
		
		return productCategoryDao.queryCategorys();
	}

}
