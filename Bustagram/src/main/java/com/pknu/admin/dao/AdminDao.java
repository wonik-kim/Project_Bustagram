package com.pknu.admin.dao;

import java.util.HashMap;

import com.pknu.admin.vo.AdminVo;

public interface AdminDao {

	AdminVo adminLogin(HashMap<String, Object> map);

	String idCheck(HashMap<String, Object> map);

}
