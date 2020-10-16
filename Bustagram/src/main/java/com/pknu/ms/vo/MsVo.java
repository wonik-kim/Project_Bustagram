package com.pknu.ms.vo;

public class MsVo {
	// private String rep; // 가사
	//필드 
	private String ci;
	private String title;
	private String audio;
	private String singer;
	
	
	
	public String getCi() {
		return ci;
	}
	public void setCi(String ci) {
		this.ci = ci;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getSinger() {
		return singer;
	}
	public void setSinger(String singer) {
		this.singer = singer;
	}
	public String getAudio() {
		return audio;
	}
	public void setAudio(String audio) {
		this.audio = audio;
	}
	
	
	@Override
	public String toString() {
		return "MsVo [ci=" + ci + ", title=" + title + ", audio=" + audio + ", singer=" + singer + "]";
	}
	
	
	
	
	
	
}
