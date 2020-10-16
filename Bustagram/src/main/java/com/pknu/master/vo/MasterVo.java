package com.pknu.master.vo;

import java.sql.Date;

public class MasterVo {

	private String userEmail;

	private int 	idx;
	private String 	mid;
	private String 	mpwd;
	private String 	mem_name;
	private Date 	mem_birth;
	private String 	mem_gen;
	private String 	mem_mail;
	private String 	lvl;
	private int 	delnum;
	
	
	
	
	public int getIdx() {
		return idx;
	}

	public void setIdx(int idx) {
		this.idx = idx;
	}

	public String getMid() {
		return mid;
	}

	public void setMid(String mid) {
		this.mid = mid;
	}

	public String getMpwd() {
		return mpwd;
	}

	public void setMpwd(String mpwd) {
		this.mpwd = mpwd;
	}

	public String getMem_name() {
		return mem_name;
	}

	public void setMem_name(String mem_name) {
		this.mem_name = mem_name;
	}

	public Date getMem_birth() {
		return mem_birth;
	}

	public void setMem_birth(Date mem_birth) {
		this.mem_birth = mem_birth;
	}

	public String getMem_gen() {
		return mem_gen;
	}

	public void setMem_gen(String mem_gen) {
		this.mem_gen = mem_gen;
	}

	public String getMem_mail() {
		return mem_mail;
	}

	public void setMem_mail(String mem_mail) {
		this.mem_mail = mem_mail;
	}

	public String getLvl() {
		return lvl;
	}

	public void setLvl(String lvl) {
		this.lvl = lvl;
	}

	public int getDelnum() {
		return delnum;
	}

	public void setDelnum(int delnum) {
		this.delnum = delnum;
	}

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	
}
