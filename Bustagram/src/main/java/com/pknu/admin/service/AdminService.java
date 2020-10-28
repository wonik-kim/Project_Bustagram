package com.pknu.admin.service;

import java.util.HashMap;
import java.util.List;

import com.pknu.admin.vo.AdminVo;

public interface AdminService {

	AdminVo adminLogin(HashMap<String, Object> map);


	List<AdminVo> getListPost(HashMap<String, Object> map);


	List<AdminVo> getMemberList(HashMap<String, Object> map);


	List<AdminVo> getArtistList(HashMap<String, Object> map);


	List<AdminVo> getStoreList(HashMap<String, Object> map);


	List<AdminVo> getScheduleList(HashMap<String, Object> map);


	List<AdminVo> getBlackList(HashMap<String, Object> map);


	List<AdminVo> getInquiryList(HashMap<String, Object> map);

}
