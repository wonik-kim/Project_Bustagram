package com.pknu.performance.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.format.annotation.DateTimeFormat.ISO;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.pknu.performance.service.PerformanceService;
import com.pknu.performance.service.impl.PerformanceServiceImpl;
import com.pknu.performance.vo.PerformanceVo;


@Controller
public class PerformanceController {
	
	@Autowired
	private PerformanceServiceImpl performanceService;

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
	
	@RequestMapping("/performInfo")
	public String performInfo() {
		return "/performance/performInfo";
	}
	
	@RequestMapping("/Schedule/Genre")
	@ResponseBody
	public List<PerformanceVo> schedule_genre(@RequestParam HashMap<String, Object> map) {
		List<PerformanceVo> scheduleGenre = performanceService.scheduleGenre(map);
		
		return scheduleGenre;
	}
	
	@RequestMapping("/Schedule/Artist")
	@ResponseBody
	public List<PerformanceVo> schedule_artist(@RequestParam HashMap<String, Object> map) {
		List<PerformanceVo> scheduleArtist = performanceService.scheduleArtist(map);
		
		return scheduleArtist;
	}
	
	@RequestMapping("/Schedule/Performance")
	@ResponseBody
	public List<PerformanceVo> schedule_performance(@RequestParam HashMap<String, Object> map) {
		List<PerformanceVo> schedulePerformance = performanceService.schedulePerformance(map);
		
		return schedulePerformance;
	}
	
	@RequestMapping("/Schedule/Detail")
	@ResponseBody
	public PerformanceVo schedule_detail(@RequestParam HashMap<String, Object> map) {
		PerformanceVo scheduleDetail = performanceService.scheduleDetail(map);
		
		return scheduleDetail;
	}
	
	@RequestMapping(value="/FullCalendar/Region", method=RequestMethod.GET)
	@ResponseBody
	@DateTimeFormat(iso=ISO.DATE)
	public List<HashMap<String,Object>> fullCalendar(@RequestParam HashMap<String, Object> map) {
	
		List<PerformanceVo> fullCalendarRegion = performanceService.fullCalendarRegion(map);	
		List<HashMap<String,Object>> scheduleList = new ArrayList<HashMap<String,Object>>();
		
		for(int i = 0; i < fullCalendarRegion.size(); i++) {
			HashMap<String,Object> fullMap = new HashMap<String, Object>();
			
			int idx = fullCalendarRegion.get(i).getIdx();
			String title = fullCalendarRegion.get(i).getSchedule_date().substring(11) + ' ' +fullCalendarRegion.get(i).getArt_name();
			String start = fullCalendarRegion.get(i).getSchedule_date().substring(0, 10);
			String color = "black";
			String backgroundColor ="#00ff0000";
			
			fullMap.put("title", title);
			fullMap.put("start", start);
			fullMap.put("textColor", color);
			fullMap.put("color", backgroundColor);
			fullMap.put("idx", idx);

			scheduleList.add(fullMap);
		}

		return scheduleList;
	}	

}
