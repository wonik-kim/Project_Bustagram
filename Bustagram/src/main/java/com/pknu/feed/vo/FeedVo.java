package com.pknu.feed.vo;

public class FeedVo {
	// field
	private int idx;
	private String mid;
	private String mem_name;
	private String wdate;
	private String cont;
	private int    like;
	
	//getter setter
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
	public String getMem_name() {
		return mem_name;
	}
	public void setMem_name(String mem_name) {
		this.mem_name = mem_name;
	}
	public String getWdate() {
		return wdate;
	}
	public void setWdate(String wdate) {
		this.wdate = wdate;
	}
	public String getCont() {
		return cont;
	}
	public void setCont(String cont) {
		this.cont = cont;
	}
	public int getLike() {
		return like;
	}
	public void setLike(int like) {
		this.like = like;
	}
	
	
	@Override
	public String toString() {
		return "FeedVo(피드 작성) [idx=" + idx + ", mid=" + mid + ", mem_name=" + mem_name + ", wdate=" + wdate + ", cont=" + cont
				+ ", like=" + like + "]";
	}
}
