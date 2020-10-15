package com.pknu.admin.dao.impl;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pknu.admin.dao.AdminDao;
import com.pknu.admin.vo.AdminVo;

@Repository("adminDao")
public class AdminDaoImpl implements AdminDao {

	@Autowired
	private SqlSession sqlSession;

	@Override
	public AdminVo adminLogin(HashMap<String, Object> map) {
		
		AdminVo adminVo =  sqlSession.selectOne("Admin.AdminLogin", map);
		
		
		return adminVo;
	}
	
	
	
}
