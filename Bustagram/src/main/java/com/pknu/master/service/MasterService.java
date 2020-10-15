package com.pknu.master.service;

import java.util.HashMap;
import java.util.List;

import com.pknu.master.vo.MasterVo;

public interface MasterService {

	void sendMail(String setfrom, String memmail, String title, String content);

	void signUp(HashMap<String, Object> map);

	void insAuth(HashMap<String, Object> map);

	public int idCheck(HashMap<String, Object> map);

	int findId(HashMap<String, Object> map);

	List<MasterVo> idGet(HashMap<String, Object> map);

	
}
