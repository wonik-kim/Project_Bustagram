package com.pknu.performance.dao.impl;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("performanceDao")
public class PerformanceDaoImpl {

	@Autowired
	private SqlSession sqlSession;
	
}
