package com.pknu.performance.dao.impl;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pknu.performance.dao.PerformanceDao;
import com.pknu.performance.vo.PerformanceVo;

@Repository("performanceDao")
public class PerformanceDaoImpl implements PerformanceDao {

	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<PerformanceVo> scheduleRegion(HashMap<String, Object> map) {
		sqlSession.selectList("Performance.Region", map);
		
		List<PerformanceVo> scheduleRegion = (List<PerformanceVo>) map.get("result");

		return scheduleRegion;
	}

	@Override
	public List<PerformanceVo> scheduleRegionGugun(HashMap<String, Object> map) {
		sqlSession.selectList("Performance.RegionGugun", map);
		
		List<PerformanceVo> scheduleRegion = (List<PerformanceVo>) map.get("result");
		
		return scheduleRegion;
	}
	
}
