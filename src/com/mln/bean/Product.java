package com.mln.bean;

/**
 * Description 产品
 * 2013-4-18
 * @author 11
 */
public class Product {
	private Integer id;
	private String name;
	private String number;
	private String bullNumber;
	private String enName;
	private String tpi;
	private String lnm;
	private Integer milkProduction;
	private Integer milkLife;
	private String description;
	private String categoryId;		// 产品种类ID
	
	private String imgPath;			// 图片路径
	private Double price;			// Product Price
	
	public Double getPrice() {
		return price;
	}
	public void setPrice(Double price) {
		this.price = price;
	}
	public String getImgPath() {
		return imgPath;
	}
	public void setImgPath(String imgPath) {
		this.imgPath = imgPath;
	}
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
	public String getNumber() {
		return number;
	}
	public void setNumber(String number) {
		this.number = number;
	}
	public String getBullNumber() {
		return bullNumber;
	}
	public void setBullNumber(String bullNumber) {
		this.bullNumber = bullNumber;
	}
	public String getEnName() {
		return enName;
	}
	public void setEnName(String enName) {
		this.enName = enName;
	}
	public String getTpi() {
		return tpi;
	}
	public void setTpi(String tpi) {
		this.tpi = tpi;
	}
	public String getLnm() {
		return lnm;
	}
	public void setLnm(String lnm) {
		this.lnm = lnm;
	}
	public Integer getMilkProduction() {
		return milkProduction;
	}
	public void setMilkProduction(Integer milkProduction) {
		this.milkProduction = milkProduction;
	}
	public Integer getMilkLife() {
		return milkLife;
	}
	public void setMilkLife(Integer milkLife) {
		this.milkLife = milkLife;
	}
	public String getCategoryId() {
		return categoryId;
	}
	public void setCategoryId(String categoryId) {
		this.categoryId = categoryId;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	
	
}
