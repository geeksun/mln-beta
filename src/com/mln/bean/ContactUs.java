package com.mln.bean;

import java.util.Date;

/**
 * Description Contact-Us information
 * 2013-5-16
 * @author usr1999
 */
public class ContactUs {
	private Integer id;
	private String name;
	private String content;
	private Date time;
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getTime() {
		return time;
	}
	public void setTime(Date time) {
		this.time = time;
	}
	
}
