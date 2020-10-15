package com.pknu.master.service;

import java.util.HashMap;

import com.pknu.master.vo.MasterVo;

public interface MasterService {

	void sendMail(String setfrom, String userEmail, String title, String content);

	public MasterVo masterLogin(HashMap<String, Object> map);
	
}
