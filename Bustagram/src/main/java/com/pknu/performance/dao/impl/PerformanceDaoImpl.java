package com.pknu.performance.dao.impl;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pknu.board.vo.BoardVo;
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

	@Override
	public List<PerformanceVo> scheduleGenre(HashMap<String, Object> map) {
		sqlSession.selectList("Performance.Genre", map);
		
		List<PerformanceVo> scheduleGenre = (List<PerformanceVo>) map.get("result");
		
		return scheduleGenre;
	}

	@Override
	public List<PerformanceVo> scheduleArtist(HashMap<String, Object> map) {
		sqlSession.selectList("Performance.Artist", map);
		
		List<PerformanceVo> scheduleArtist = (List<PerformanceVo>) map.get("result");
		
		return scheduleArtist;
	}

	@Override
	public List<PerformanceVo> schedulePerformance(HashMap<String, Object> map) {
		sqlSession.selectList("Performance.Performance", map);
		
		List<PerformanceVo> schedulePerformance = (List<PerformanceVo>) map.get("result");
		
		return schedulePerformance;
	}

	@Override
	public PerformanceVo scheduleDetail(HashMap<String, Object> map) {
		sqlSession.selectOne("Performance.Detail", map);
		
		List<PerformanceVo> scheduleDetail = (List<PerformanceVo>) map.get("result");

		PerformanceVo performanceVo = scheduleDetail.get(0);
		
		return performanceVo;
	}
	
}
