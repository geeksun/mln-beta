package com.mln.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.springframework.stereotype.Repository;

import com.mln.bean.ProductCategory;
import com.mln.db.DBHandler;

@Repository
public class ProductCategoryDao {
	
	/**
	 * QueryRunner对象
	 */
	private QueryRunner runner;
	
	public ProductCategoryDao() {
		runner = DBHandler.getRunner();
	}

	/**
	 * @return 产品种类列表
	 */
	public List<ProductCategory> queryCategorys() {
		String sql = "select * from product_category";
		List<ProductCategory> list = null;
		try {
			list = runner.query(sql, new BeanListHandler<ProductCategory>(ProductCategory.class));
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return list;
	}

}
