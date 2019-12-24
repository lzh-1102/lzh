package com.lzh.bean;

import java.util.Date;

import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.NotBlank;
import org.springframework.format.annotation.DateTimeFormat;

public class Applicant {

	private Integer id;
	@NotBlank(message = "应聘人不能空")
	private String name;
	@NotNull(message = "性别不能为空")
	private String gender;
	@NotBlank(message = "生日不能为空")
	private String birthday;
	@NotBlank(message = "毕业大学不能为空")
	private String college;
	@NotBlank(message = "专业不能为空")
	private String major;
	@Min(value = 1, message = "请选择学历")
	private Integer edu;
	@Min(value = 1, message = "请选择学位")
	private Integer degree;
	@DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	private Date created;
	
	private String score;
	private String avg;
	
	
	public String getAvg() {
		return avg;
	}
	public void setAvg(String avg) {
		this.avg = avg;
	}
	public String getScore() {
		return score;
	}
	public void setScore(String score) {
		this.score = score;
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
	public String getCollege() {
		return college;
	}
	public void setCollege(String college) {
		this.college = college;
	}
	public String getMajor() {
		return major;
	}
	public void setMajor(String major) {
		this.major = major;
	}
	public Integer getEdu() {
		return edu;
	}
	public void setEdu(Integer edu) {
		this.edu = edu;
	}
	public Integer getDegree() {
		return degree;
	}
	public void setDegree(Integer degree) {
		this.degree = degree;
	}
	public Date getCreated() {
		return created;
	}
	public void setCreated(Date created) {
		this.created = created;
	}
	public Applicant() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public String getedu(Integer edu) {
		if(this.edu==1) {
			return "专科";
		}else if(this.edu==2) {
			return "本科";
		}else {
			return "研究生";
		}
	}
	public String getdegree(Integer degree) {
		if(this.degree==1) {
			return "学士";
		}else if(this.degree==2) {
			return "硕士";
		}else {
			return "博士";
		}
	}
	@Override
	public String toString() {
		return "Applicant [id=" + id + ", name=" + name + ", gender=" + gender + ", birthday=" + birthday + ", college="
				+ college + ", major=" + major + ", edu=" + edu + ", degree=" + degree + ", created=" + created
				+ ", score=" + score + ", avg=" + avg + "]";
	}
	
	
}
