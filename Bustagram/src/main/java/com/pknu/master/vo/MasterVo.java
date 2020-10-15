package com.pknu.master.vo;

public class MasterVo {

	// Login 관련
	private String memmail;
	
	private String mid;
	private String mempwd;
	private String memname;
	private String membirth;
	private String memgen;
	
	private int    ran;
	private int authnum;

	public int getAuthnum() {
		return authnum;
	}

	public void setAuthnum(int authnum) {
		this.authnum = authnum;
	}

	public int getRan() {
		return ran;
	}

	public void setRan(int ran) {
		this.ran = ran;
	}

	public String getMemmail() {
		return memmail;
	}

	public void setMemmail(String memmail) {
		this.memmail = memmail;
	}

	public String getMid() {
		return mid;
	}

	public void setMid(String mid) {
		this.mid = mid;
	}

	public String getMempwd() {
		return mempwd;
	}

	public void setMempwd(String mempwd) {
		this.mempwd = mempwd;
	}

	public String getMemname() {
		return memname;
	}

	public void setMemname(String memname) {
		this.memname = memname;
	}

	public String getMembirth() {
		return membirth;
	}

	public void setMembirth(String membirth) {
		this.membirth = membirth;
	}

	public String getMemgen() {
		return memgen;
	}

	public void setMemgen(String memgen) {
		this.memgen = memgen;
	}
	
	

	
	
}
