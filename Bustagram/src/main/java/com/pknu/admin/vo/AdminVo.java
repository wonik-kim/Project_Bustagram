package com.pknu.admin.vo;

import java.sql.Date;

public class AdminVo {

	// 회원
	private int 	idx;
	private String 	mid;
	private String 	mem_pwd;
	private String 	mem_name;
	private Date 	mem_birth;
	private String 	mem_gen;
	private String 	mem_mail;
	private String 	lvl;
	private int 	mem_delnum;
	private String 	age;
	
	
	// 관리자 페이지 게시글 5개 조회
	private String 		segment_id;
	private String 		commu_title;
	private String 		commu_content;
	private String 		commu_date;
	private int 		commu_count;
	private int 		commu_bnum;
	private int 		commu_lvl;
	private int 		commu_delnum;	
	
	// 아티스트
	private String 		artist_id;
	private String 		art_name;
	private String 		art_cnt;
	private String 		gen_id;
	private String 		art_intro;
	private String 		art_conf;
	
	// 가게
	private String 		str_id;
	private String 		str_name;
	private String 		str_type;
	private String 		str_addr;
	private String 		region_id_sido;
	private String 		region_id_gugun;
	private String 		str_bnum;
	private String 		str_intro;
	private String 		str_conf;
	private String 		gugun;
	private String 		sido;
	
	// 블랙리스트
	private String 		cause;
	
	// 문의글 목록
	private String 		inq_title;
	private String 		inq_pwd;
	private String 		inq_content;
	private Date 		inq_date;
	private int 		inq_bnum;
	private int 		inq_lvl;
	private int 		inq_delnum;
	
	// 일정 목록
	private String 		schedule_name;
	private String 		schedule_info;
	private Date 		schedule_date;
	private String 		schedule_tf;
	
	// 구분번호
	private String 		segment_val;
	private String 		gen_val;
	
	// 경고, 신고 목록
	private String 		bdate;
	private String 		report_num;
	private String 		reporting_mid;
	private String 		reported_mid;
	private Date 		report_date;
	
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

	
	
	
	
	public int getMem_delnum() {
		return mem_delnum;
	}
	public void setMem_delnum(int mem_delnum) {
		this.mem_delnum = mem_delnum;
	}
	public String getSegment_id() {
		return segment_id;
	}
	public void setSegment_id(String segment_id) {
		this.segment_id = segment_id;
	}
	public String getCommu_title() {
		return commu_title;
	}
	public void setCommu_title(String commu_title) {
		this.commu_title = commu_title;
	}
	public String getCommu_content() {
		return commu_content;
	}
	public void setCommu_content(String commu_content) {
		this.commu_content = commu_content;
	}
	public String getCommu_date() {
		return commu_date;
	}
	public void setCommu_date(String commu_date) {
		this.commu_date = commu_date;
	}
	public int getCommu_count() {
		return commu_count;
	}
	public void setCommu_count(int commu_count) {
		this.commu_count = commu_count;
	}
	public int getCommu_bnum() {
		return commu_bnum;
	}
	public void setCommu_bnum(int commu_bnum) {
		this.commu_bnum = commu_bnum;
	}
	public int getCommu_lvl() {
		return commu_lvl;
	}
	public void setCommu_lvl(int commu_lvl) {
		this.commu_lvl = commu_lvl;
	}
	public int getCommu_delnum() {
		return commu_delnum;
	}
	public void setCommu_delnum(int commu_delnum) {
		this.commu_delnum = commu_delnum;
	}
	public String getArtist_id() {
		return artist_id;
	}
	public void setArtist_id(String artist_id) {
		this.artist_id = artist_id;
	}
	public String getArt_name() {
		return art_name;
	}
	public void setArt_name(String art_name) {
		this.art_name = art_name;
	}
	public String getArt_cnt() {
		return art_cnt;
	}
	public void setArt_cnt(String art_cnt) {
		this.art_cnt = art_cnt;
	}
	public String getGen_id() {
		return gen_id;
	}
	public void setGen_id(String gen_id) {
		this.gen_id = gen_id;
	}
	public String getArt_intro() {
		return art_intro;
	}
	public void setArt_intro(String art_intro) {
		this.art_intro = art_intro;
	}
	public String getArt_conf() {
		return art_conf;
	}
	public void setArt_conf(String art_conf) {
		this.art_conf = art_conf;
	}
	public String getStr_id() {
		return str_id;
	}
	public void setStr_id(String str_id) {
		this.str_id = str_id;
	}
	public String getStr_name() {
		return str_name;
	}
	public void setStr_name(String str_name) {
		this.str_name = str_name;
	}
	public String getStr_type() {
		return str_type;
	}
	public void setStr_type(String str_type) {
		this.str_type = str_type;
	}
	public String getStr_addr() {
		return str_addr;
	}
	public void setStr_addr(String str_addr) {
		this.str_addr = str_addr;
	}
	public String getRegion_id_sido() {
		return region_id_sido;
	}
	public void setRegion_id_sido(String region_id_sido) {
		this.region_id_sido = region_id_sido;
	}
	public String getRegion_id_gugun() {
		return region_id_gugun;
	}
	public void setRegion_id_gugun(String region_id_gugun) {
		this.region_id_gugun = region_id_gugun;
	}
	public String getStr_bnum() {
		return str_bnum;
	}
	public void setStr_bnum(String str_bnum) {
		this.str_bnum = str_bnum;
	}
	public String getStr_intro() {
		return str_intro;
	}
	public void setStr_intro(String str_intro) {
		this.str_intro = str_intro;
	}
	public String getStr_conf() {
		return str_conf;
	}
	public void setStr_conf(String str_conf) {
		this.str_conf = str_conf;
	}
	public String getCause() {
		return cause;
	}
	public void setCause(String cause) {
		this.cause = cause;
	}
	public String getInq_title() {
		return inq_title;
	}
	public void setInq_title(String inq_title) {
		this.inq_title = inq_title;
	}
	public String getInq_pwd() {
		return inq_pwd;
	}
	public void setInq_pwd(String inq_pwd) {
		this.inq_pwd = inq_pwd;
	}
	public String getInq_content() {
		return inq_content;
	}
	public void setInq_content(String inq_content) {
		this.inq_content = inq_content;
	}
	public Date getInq_date() {
		return inq_date;
	}
	public void setInq_date(Date inq_date) {
		this.inq_date = inq_date;
	}
	public int getInq_bnum() {
		return inq_bnum;
	}
	public void setInq_bnum(int inq_bnum) {
		this.inq_bnum = inq_bnum;
	}
	public int getInq_lvl() {
		return inq_lvl;
	}
	public void setInq_lvl(int inq_lvl) {
		this.inq_lvl = inq_lvl;
	}
	public int getInq_delnum() {
		return inq_delnum;
	}
	public void setInq_delnum(int inq_delnum) {
		this.inq_delnum = inq_delnum;
	}
	public String getSchedule_name() {
		return schedule_name;
	}
	public void setSchedule_name(String schedule_name) {
		this.schedule_name = schedule_name;
	}
	public String getSchedule_info() {
		return schedule_info;
	}
	public void setSchedule_info(String schedule_info) {
		this.schedule_info = schedule_info;
	}
	public Date getSchedule_date() {
		return schedule_date;
	}
	public void setSchedule_date(Date schedule_date) {
		this.schedule_date = schedule_date;
	}
	public String getSchedule_tf() {
		return schedule_tf;
	}
	public void setSchedule_tf(String schedule_tf) {
		this.schedule_tf = schedule_tf;
	}
	public String getSegment_val() {
		return segment_val;
	}
	public void setSegment_val(String segment_val) {
		this.segment_val = segment_val;
	}
	public String getBdate() {
		return bdate;
	}
	public void setBdate(String bdate) {
		this.bdate = bdate;
	}
	public String getReport_num() {
		return report_num;
	}
	public void setReport_num(String report_num) {
		this.report_num = report_num;
	}
	public String getReporting_mid() {
		return reporting_mid;
	}
	public void setReporting_mid(String reporting_mid) {
		this.reporting_mid = reporting_mid;
	}
	public String getReported_mid() {
		return reported_mid;
	}
	public void setReported_mid(String reported_mid) {
		this.reported_mid = reported_mid;
	}
	public Date getReport_date() {
		return report_date;
	}
	public void setReport_date(Date report_date) {
		this.report_date = report_date;
	}
	public String getGen_val() {
		return gen_val;
	}
	public void setGen_val(String gen_val) {
		this.gen_val = gen_val;
	}
	
	
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	public String getGugun() {
		return gugun;
	}
	public void setGugun(String gugun) {
		this.gugun = gugun;
	}
	public String getSido() {
		return sido;
	}
	public void setSido(String sido) {
		this.sido = sido;
	}
	
	
	@Override
	public String toString() {
		return "AdminVo [idx=" + idx + ", mid=" + mid + ", mem_pwd=" + mem_pwd + ", mem_name=" + mem_name
				+ ", mem_birth=" + mem_birth + ", mem_gen=" + mem_gen + ", mem_mail=" + mem_mail + ", lvl=" + lvl
				+ ", mem_delnum=" + mem_delnum + ", age=" + age + ", segment_id=" + segment_id + ", commu_title=" + commu_title
				+ ", commu_content=" + commu_content + ", commu_date=" + commu_date + ", commu_count=" + commu_count
				+ ", commu_bnum=" + commu_bnum + ", commu_lvl=" + commu_lvl + ", commu_delnum=" + commu_delnum
				+ ", artist_id=" + artist_id + ", art_name=" + art_name + ", art_cnt=" + art_cnt + ", gen_id=" + gen_id
				+ ", art_intro=" + art_intro + ", art_conf=" + art_conf + ", str_id=" + str_id + ", str_name="
				+ str_name + ", str_type=" + str_type + ", str_addr=" + str_addr + ", region_id_sido=" + region_id_sido
				+ ", region_id_gugun=" + region_id_gugun + ", str_bnum=" + str_bnum + ", str_intro=" + str_intro
				+ ", str_conf=" + str_conf + ", gugun=" + gugun + ", sido=" + sido + ", cause=" + cause + ", inq_title="
				+ inq_title + ", inq_pwd=" + inq_pwd + ", inq_content=" + inq_content + ", inq_date=" + inq_date
				+ ", inq_bnum=" + inq_bnum + ", inq_lvl=" + inq_lvl + ", inq_delnum=" + inq_delnum + ", schedule_name="
				+ schedule_name + ", schedule_info=" + schedule_info + ", schedule_date=" + schedule_date
				+ ", schedule_tf=" + schedule_tf + ", segment_val=" + segment_val + ", gen_val=" + gen_val + ", bdate="
				+ bdate + ", report_num=" + report_num + ", reporting_mid=" + reporting_mid + ", reported_mid="
				+ reported_mid + ", report_date=" + report_date + "]";
	}

	
	
	
	
	
	
	
	
	
	
	
	
	
	


	
	
	
	
}
