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

	@Override
	public List<PerformanceVo> fullCalendarRegion(HashMap<String, Object> map) {
		sqlSession.selectList("FullCalendar.Region", map);
		
		List<PerformanceVo> fullCalendarRegion = (List<PerformanceVo>) map.get("result");
		
		return fullCalendarRegion;
	}

	@Override
	public List<PerformanceVo> fullCalendarGenre(HashMap<String, Object> map) {
		sqlSession.selectList("FullCalendar.Genre", map);
		
		List<PerformanceVo> fullCalendarGenre = (List<PerformanceVo>) map.get("result");
		
		return fullCalendarGenre;
	}

	@Override
	public List<PerformanceVo> fullCalendarArtist(HashMap<String, Object> map) {
		sqlSession.selectList("FullCalendar.Artist", map);
		
		List<PerformanceVo> fullCalendarArtist = (List<PerformanceVo>) map.get("result");
		
		return fullCalendarArtist;
	}

	public List<PerformanceVo> getPerList(HashMap<String, Object> map) {
		sqlSession.selectList("Performance.GetPerformance", map);
		List<PerformanceVo> getPerList = (List<PerformanceVo>) map.get("result");
		
		return getPerList;
	}
	
}
