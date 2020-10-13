package com.pknu.performance.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.pknu.performance.service.PerformanceService;
import com.pknu.performance.vo.PerformanceVo;

@Controller
public class PerformanceController {
	
	@Autowired
	private PerformanceService performanceService;

	@RequestMapping("/Schedule")
	public ModelAndView schedule_sido(@RequestParam HashMap<String, Object> map) {
		List<PerformanceVo> scheduleRegion = performanceService.scheduleRegion(map);
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("scheduleRegion", scheduleRegion);
		mv.setViewName("/performance/schedule");
		
		return mv;
	}
	
	@RequestMapping("/Schedule/Gugun")
	@ResponseBody
	public List<PerformanceVo> schedule_gugun(@RequestParam HashMap<String, Object> map) {
		List<PerformanceVo> scheduleRegion = performanceService.scheduleRegionGugun(map);
		
		return scheduleRegion;
	}
	
	

}
