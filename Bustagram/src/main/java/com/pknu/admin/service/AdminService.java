package com.pknu.admin.service;

import java.util.HashMap;

import com.pknu.admin.vo.AdminVo;

public interface AdminService {

	AdminVo adminLogin(HashMap<String, Object> map);

	String idCheck(HashMap<String, Object> map);

}
