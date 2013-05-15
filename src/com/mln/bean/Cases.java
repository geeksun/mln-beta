package com.mln.bean;

/**
 * Description Success customer cases
 * 2013-5-3
 * @author usr1999
 */
public class Cases {
	private Integer id;
	private String name;
	private Integer customerId;			// customerId is userId
	private String content;
	private String categoryId;			// 1.Semen  2.Embryo
	private String imgPath;				// dispaly img path
	
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
	public Integer getCustomerId() {
		return customerId;
	}
	public void setCustomerId(Integer customerId) {
		this.customerId = customerId;
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
	public String getImgPath() {
		return imgPath;
	}
	public void setImgPath(String imgPath) {
		this.imgPath = imgPath;
	}

}
