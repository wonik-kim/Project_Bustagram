package com.pknu.mypage.vo;

public class MypageVo {

	// Fields
		// 멤버 공통
		private String 	mid;
		private String 	mem_pwd;
		private String 	mem_name;
		private String 	mem_birth;
		private String 	mem_gen;
		private String 	mem_mail;
		private String 	lvl;

		// 아티스트
		private String 	art_name;
		private int		art_cnt;
		private String 	gen_val;
		private String  art_intro;
		private String  gen_id;
		
		// 가게
		private String	str_name;
		private String	str_type;
		private String	str_addr1;
		private String	str_addr2;
		private String	str_addr3;
		private String	str_addr1_id;
		private String	str_addr2_id;
		private String	str_bnum;
		private String  str_intro;
		
		// 프로필 사진
		private String prof_origin_name;
		private String prof_db_name;
		private String prof_db_ext;
		private String prof_date;
		
		// 지역
		private String region_id;
		private String region_val;
		private String parent_id;

		public String getRegion_id() {
			return region_id;
		}
		public void setRegion_id(String region_id) {
			this.region_id = region_id;
		}
		public String getRegion_val() {
			return region_val;
		}
		public void setRegion_val(String region_val) {
			this.region_val = region_val;
		}
		public String getParent_id() {
			return parent_id;
		}
		public void setParent_id(String parent_id) {
			this.parent_id = parent_id;
		}
		public String getStr_addr1_id() {
			return str_addr1_id;
		}
		public void setStr_addr1_id(String str_addr1_id) {
			this.str_addr1_id = str_addr1_id;
		}
		public String getStr_addr2_id() {
			return str_addr2_id;
		}
		public void setStr_addr2_id(String str_addr2_id) {
			this.str_addr2_id = str_addr2_id;
		}
		public String getMid() {
			return mid;
		}
		public String getGen_id() {
			return gen_id;
		}
		public void setGen_id(String gen_id) {
			this.gen_id = gen_id;
		}
		public String getStr_addr1() {
			return str_addr1;
		}
		public void setStr_addr1(String str_addr1) {
			this.str_addr1 = str_addr1;
		}
		public String getStr_addr2() {
			return str_addr2;
		}
		public void setStr_addr2(String str_addr2) {
			this.str_addr2 = str_addr2;
		}
		public String getStr_addr3() {
			return str_addr3;
		}
		public void setStr_addr3(String str_addr3) {
			this.str_addr3 = str_addr3;
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
		public String getMem_birth() {
			return mem_birth;
		}
		public void setMem_birth(String mem_birth) {
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
		public String getArt_name() {
			return art_name;
		}
		public void setArt_name(String art_name) {
			this.art_name = art_name;
		}
		public int getArt_cnt() {
			return art_cnt;
		}
		public void setArt_cnt(int art_cnt) {
			this.art_cnt = art_cnt;
		}
		public String getGen_val() {
			return gen_val;
		}
		public void setGen_val(String gen_val) {
			this.gen_val = gen_val;
		}
		public String getArt_intro() {
			return art_intro;
		}
		public void setArt_intro(String art_intro) {
			this.art_intro = art_intro;
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
		public String getProf_origin_name() {
			return prof_origin_name;
		}
		public void setProf_origin_name(String prof_origin_name) {
			this.prof_origin_name = prof_origin_name;
		}
		public String getProf_db_name() {
			return prof_db_name;
		}
		public void setProf_db_name(String prof_db_name) {
			this.prof_db_name = prof_db_name;
		}
		public String getProf_db_ext() {
			return prof_db_ext;
		}
		public void setProf_db_ext(String prof_db_ext) {
			this.prof_db_ext = prof_db_ext;
		}
		public String getProf_date() {
			return prof_date;
		}
		public void setProf_date(String prof_date) {
			this.prof_date = prof_date;
		}

		public MypageVo() {}
		public MypageVo(String mid) {
			this.mid=mid;
		}
		public MypageVo(String prof_origin_name, String prof_db_name, String prof_db_ext, String prof_date) {
			this.prof_origin_name = prof_origin_name;
			this.prof_db_name = prof_db_name;
			this.prof_db_ext = prof_db_ext;
			this.prof_date = prof_date;
		}
		public MypageVo(String mid, String mem_pwd, String mem_name, String mem_birth, String mem_gen, String mem_mail,
				String lvl, String art_name, int art_cnt, String gen_val, String art_intro, String gen_id,
				String str_name, String str_type, String str_addr1, String str_addr2, String str_addr3,
				String str_addr1_id, String str_addr2_id, String str_bnum, String str_intro, String prof_origin_name,
				String prof_db_name, String prof_db_ext, String prof_date, String region_id, String region_val,
				String parent_id) {
			super();
			this.mid = mid;
			this.mem_pwd = mem_pwd;
			this.mem_name = mem_name;
			this.mem_birth = mem_birth;
			this.mem_gen = mem_gen;
			this.mem_mail = mem_mail;
			this.lvl = lvl;
			this.art_name = art_name;
			this.art_cnt = art_cnt;
			this.gen_val = gen_val;
			this.art_intro = art_intro;
			this.gen_id = gen_id;
			this.str_name = str_name;
			this.str_type = str_type;
			this.str_addr1 = str_addr1;
			this.str_addr2 = str_addr2;
			this.str_addr3 = str_addr3;
			this.str_addr1_id = str_addr1_id;
			this.str_addr2_id = str_addr2_id;
			this.str_bnum = str_bnum;
			this.str_intro = str_intro;
			this.prof_origin_name = prof_origin_name;
			this.prof_db_name = prof_db_name;
			this.prof_db_ext = prof_db_ext;
			this.prof_date = prof_date;
			this.region_id = region_id;
			this.region_val = region_val;
			this.parent_id = parent_id;
		}
		@Override
		public String toString() {
			return "MypageVo [mid=" + mid + ", mem_pwd=" + mem_pwd + ", mem_name=" + mem_name + ", mem_birth="
					+ mem_birth + ", mem_gen=" + mem_gen + ", mem_mail=" + mem_mail + ", lvl=" + lvl + ", art_name="
					+ art_name + ", art_cnt=" + art_cnt + ", gen_val=" + gen_val + ", art_intro=" + art_intro
					+ ", gen_id=" + gen_id + ", str_name=" + str_name + ", str_type=" + str_type + ", str_addr1="
					+ str_addr1 + ", str_addr2=" + str_addr2 + ", str_addr3=" + str_addr3 + ", str_addr1_id="
					+ str_addr1_id + ", str_addr2_id=" + str_addr2_id + ", str_bnum=" + str_bnum + ", str_intro="
					+ str_intro + ", prof_origin_name=" + prof_origin_name + ", prof_db_name=" + prof_db_name
					+ ", prof_db_ext=" + prof_db_ext + ", prof_date=" + prof_date + ", region_id=" + region_id
					+ ", region_val=" + region_val + ", parent_id=" + parent_id + "]";
		}


		
//	
		
}
