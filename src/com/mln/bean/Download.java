package com.mln.bean;

/**
 * Description Website data information for download
 * @author usr1999
 * 2013-5-5
 */
public class Download {
	
	private Integer id;
	private String name;
	private String content;
	private String categoryId;			// 1.技术资料 2. 帮助文档 3. 软件下载
	private String link;
	
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
	public String getCategoryId() {
		return categoryId;
	}
	public void setCategoryId(String categoryId) {
		this.categoryId = categoryId;
	}
	public String getLink() {
		return link;
	}
	public void setLink(String link) {
		this.link = link;
	}
	
}
