package com.pknu.performance.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pknu.performance.service.impl.PerformanceServiceImpl;

@Controller
public class PerformanceController {
	
	@Autowired
	private PerformanceServiceImpl performanceService;

	@RequestMapping("/schedule")
	public String home() {
		return "/performance/schedule";
	}
	
	@RequestMapping("/performInfo")
	public String performInfo() {
		return "/performance/performInfo";
	}
	
}
