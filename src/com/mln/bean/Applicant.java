package com.mln.bean;

import java.util.Date;

/**
 * Description Job applicant
 * 2013-5-6
 * @author usr1999
 */
public class Applicant {
	private Integer id;
	private Integer jobsId;			// foreign key, in jobs table
	private String name;
	private String gender;
	private String birthday;
	
	private String graduate;		//  graduated school
	private String education;		//  educational background
	private String specialty;		//  learn specialty course
	
	private String hometown;
	
	private String educationExperience;			//	Education experience
	private String workExperience;				//	Work experience
	
	private String phone;
	private String email;
	private String address;
	
	private Date time;							//  submit time
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getJobsId() {
		return jobsId;
	}
	public void setJobsId(Integer jobsId) {
		this.jobsId = jobsId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getBirthday() {
		return birthday;
	}
	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}
	public String getGraduate() {
		return graduate;
	}
	public void setGraduate(String graduate) {
		this.graduate = graduate;
	}
	public String getEducation() {
		return education;
	}
	public void setEducation(String education) {
		this.education = education;
	}
	public String getSpecialty() {
		return specialty;
	}
	public void setSpecialty(String specialty) {
		this.specialty = specialty;
	}
	public String getHometown() {
		return hometown;
	}
	public void setHometown(String hometown) {
		this.hometown = hometown;
	}
	public String getEducationExperience() {
		return educationExperience;
	}
	public void setEducationExperience(String educationExperience) {
		this.educationExperience = educationExperience;
	}
	public String getWorkExperience() {
		return workExperience;
	}
	public void setWorkExperience(String workExperience) {
		this.workExperience = workExperience;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public Date getTime() {
		return time;
	}
	public void setTime(Date time) {
		this.time = time;
	}
	
}
