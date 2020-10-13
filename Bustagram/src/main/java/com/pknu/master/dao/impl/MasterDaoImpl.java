package com.pknu.master.dao.impl;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pknu.master.dao.MasterDao;
import com.pknu.master.vo.MasterVo;

@Repository("masterDao")
public class MasterDaoImpl implements MasterDao {

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public MasterVo masterLogin(HashMap<String, Object> map) {

		MasterVo masterVo = sqlSession.selectOne("Master.MasterLogin", map);
		
		return masterVo;
	}

}
