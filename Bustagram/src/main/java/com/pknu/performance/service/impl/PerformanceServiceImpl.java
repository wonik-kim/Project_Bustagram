package com.pknu.performance.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pknu.performance.dao.impl.PerformanceDaoImpl;
import com.pknu.performance.service.PerformanceService;

@Service
public class PerformanceServiceImpl implements PerformanceService {

	@Autowired
	private PerformanceDaoImpl performanceDao;
	
}
