package com.pknu.performance.service.impl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pknu.performance.dao.PerformanceDao;
import com.pknu.performance.service.PerformanceService;
import com.pknu.performance.vo.PerformanceVo;

@Service("performanceService")
public class PerformanceServiceImpl implements PerformanceService {

	@Autowired
	private PerformanceDao performanceDao;
	
	@Override
	public List<PerformanceVo> scheduleRegion(HashMap<String, Object> map) {
		List<PerformanceVo> scheduleRegion = performanceDao.scheduleRegion(map);
		
		return scheduleRegion;
	}

	@Override
	public List<PerformanceVo> scheduleRegionGugun(HashMap<String, Object> map) {
		List<PerformanceVo> scheduleRegion = performanceDao.scheduleRegionGugun(map);
		
		return scheduleRegion;
	}

	@Override
	public List<PerformanceVo> scheduleGenre(HashMap<String, Object> map) {
		List<PerformanceVo> scheduleGenre = performanceDao.scheduleGenre(map);
		
		return scheduleGenre;
	}

	@Override
	public List<PerformanceVo> scheduleArtist(HashMap<String, Object> map) {
		List<PerformanceVo> scheduleArtist = performanceDao.scheduleArtist(map);
		
		return scheduleArtist;
	}

	@Override
	public List<PerformanceVo> schedulePerformance(HashMap<String, Object> map) {
		List<PerformanceVo> schedulePerformance = performanceDao.schedulePerformance(map);
		
		return schedulePerformance;
	}

	@Override
	public PerformanceVo scheduleDetail(HashMap<String, Object> map) {
		PerformanceVo scheduleDetail = performanceDao.scheduleDetail(map);
		
		return scheduleDetail;
	}

	@Override
	public List<PerformanceVo> fullCalendarRegion(HashMap<String, Object> map) {
		List<PerformanceVo> fullCalendarRegion = performanceDao.fullCalendarRegion(map);
		
		return fullCalendarRegion;
	}

	@Override
	public List<PerformanceVo> fullCalendarGenre(HashMap<String, Object> map) {
		List<PerformanceVo> fullCalendarGenre = performanceDao.fullCalendarGenre(map);
		
		return fullCalendarGenre;
	}

	@Override
	public List<PerformanceVo> fullCalendarArtist(HashMap<String, Object> map) {
		List<PerformanceVo> fullCalendarArtist = performanceDao.fullCalendarArtist(map);
		
		return fullCalendarArtist;
	}
	
}
