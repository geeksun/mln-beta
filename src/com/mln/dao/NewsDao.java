package com.mln.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.springframework.stereotype.Repository;
import org.springframework.util.StringUtils;

import com.mln.bean.News;
import com.mln.db.DBHandler;

@Repository
public class NewsDao {
	/**
	 * QueryRunner对象
	 */
	private QueryRunner runner;
	
	public NewsDao() {
		runner = DBHandler.getRunner();
	}

	/**
	 * 查询新闻列表
	 */
	public List<News> queryNews(String categoryNo) {
		String sql = "select id id,title title,summary summary,content content,category_no categoryNo,time time,link link from news";
		if(!StringUtils.isEmpty(categoryNo)){
			sql += " where category_no='" + categoryNo + "'";
		}
		List<News> list = null;
		try {
			list = runner.query(sql, new BeanListHandler<News>(News.class));
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return list;
	}

}
