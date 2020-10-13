package com.pknu.performance.service.impl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pknu.performance.dao.impl.PerformanceDaoImpl;
import com.pknu.performance.service.PerformanceService;
import com.pknu.performance.vo.PerformanceVo;

@Service
public class PerformanceServiceImpl implements PerformanceService {

	@Autowired
	private PerformanceDaoImpl performanceDao;
	
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
	
}
