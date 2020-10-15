package com.pknu.admin.service.impl;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pknu.admin.dao.AdminDao;
import com.pknu.admin.service.AdminService;
import com.pknu.admin.vo.AdminVo;

@Service("adminService")
public class AdminServiceImpl implements AdminService {

	@Autowired
	private AdminDao adminDao;
	
	@Override
	public AdminVo adminLogin(HashMap<String, Object> map) {
		
		AdminVo adminVo = adminDao.adminLogin(map);
		
		return adminVo;
	}

}
