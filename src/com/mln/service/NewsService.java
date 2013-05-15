package com.mln.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.mln.bean.News;
import com.mln.dao.NewsDao;

@Service
public class NewsService {
	
	private NewsDao newsDao;
	
	@Resource(name="newsDao")
	public void setNewsDao(NewsDao newsDao) {
		this.newsDao = newsDao;
	}

	public List<News> queryNews(String categoryNo) {
		return newsDao.queryNews(categoryNo);
	}
	
	

}
