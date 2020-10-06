package com.pknu.performance.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pknu.performance.dao.PerformanceDao;
import com.pknu.performance.service.PerformanceService;

@Service("performanceService")
public class PerformanceServiceImpl implements PerformanceService {

	@Autowired
	private PerformanceDao performanceDao;
	
}
