package com.mln.bean;

import java.util.Date;

/**
 * Description Recruitment information
 * @author usr1999
 * 2013-5-5
 */
public class Jobs {
	private Integer id;
	private String title;
	private Integer ageLow;
	private Integer ageUp;
	private String gender;		// 0:no limit 1:male 2:female
	private String education;
	private Integer vacancy;	// Number of Recruitmet
	private String requirement;
	private Date time;
	
	public Date getTime() {
		return time;
	}
	public void setTime(Date time) {
		this.time = time;
	}
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
	public Integer getAgeLow() {
		return ageLow;
	}
	public void setAgeLow(Integer ageLow) {
		this.ageLow = ageLow;
	}
	public Integer getAgeUp() {
		return ageUp;
	}
	public void setAgeUp(Integer ageUp) {
		this.ageUp = ageUp;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getEducation() {
		return education;
	}
	public void setEducation(String education) {
		this.education = education;
	}
	public Integer getVacancy() {
		return vacancy;
	}
	public void setVacancy(Integer vacancy) {
		this.vacancy = vacancy;
	}
	public String getRequirement() {
		return requirement;
	}
	public void setRequirement(String requirement) {
		this.requirement = requirement;
	}
	
}
