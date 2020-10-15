package com.pknu.admin.vo;

import java.sql.Date;

public class AdminVo {

	private int 	idx;
	private String 	mid;
	private String 	mem_pwd;
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
	public String getMem_pwd() {
		return mem_pwd;
	}
	public void setMem_pwd(String mem_pwd) {
		this.mem_pwd = mem_pwd;
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
	
	@Override
	public String toString() {
		return "AdminVo [idx=" + idx + ", mid=" + mid + ", mem_pwd=" + mem_pwd + ", mem_name=" + mem_name
				+ ", mem_birth=" + mem_birth + ", mem_gen=" + mem_gen + ", mem_mail=" + mem_mail + ", lvl=" + lvl
				+ ", delnum=" + delnum + "]";
	}
	
	
	
}
