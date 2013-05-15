package com.mln.bean;

import java.util.Date;

/**
 * Description 新闻信息
 * 2013-4-26
 * @author usr1999
 */
public class News {
	private Integer id;
	private String title;
	private String summary;
	private String content;
	private String categoryNo;	//新闻所属类别
	private Date time;
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getSummary() {
		return summary;
	}
	public void setSummary(String summary) {
		this.summary = summary;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getCategoryNo() {
		return categoryNo;
	}
	public void setCategoryNo(String categoryNo) {
		this.categoryNo = categoryNo;
	}
	public Date getTime() {
		return time;
	}
	public void setTime(Date time) {
		this.time = time;
	}
	
}
