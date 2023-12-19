package com.yutech.javacovid.bean;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;

public class Record {
	@TableId(type = IdType.AUTO)
	private Long id;
	private String name;
	private String gender;
	private String phone;
	private float tem;
	private String time;
	private String des;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
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

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public float getTem() {
		return tem;
	}

	public void setTem(float tem) {
		this.tem = tem;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public String getDes() {
		return des;
	}

	public void setDes(String des) {
		this.des = des;
	}

	@Override
	public String toString() {
		return "Record{" +
				"id=" + id +
				", name='" + name + '\'' +
				", gender='" + gender + '\'' +
				", phone='" + phone + '\'' +
				", tem=" + tem +
				", time='" + time + '\'' +
				", des='" + des + '\'' +
				'}';
	}
}
