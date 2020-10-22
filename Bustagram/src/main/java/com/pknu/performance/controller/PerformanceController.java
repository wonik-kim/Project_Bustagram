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
	public List<HashMap<String,Object>> fullCalendarRegion(@RequestParam HashMap<String, Object> map) {
	
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
	
	@RequestMapping(value="/FullCalendar/Genre", method=RequestMethod.GET)
	@ResponseBody
	@DateTimeFormat(iso=ISO.DATE)
	public List<HashMap<String,Object>> fullCalendarGenre(@RequestParam HashMap<String, Object> map) {
	
		List<PerformanceVo> fullCalendarGenre = performanceService.fullCalendarGenre(map);	
		List<HashMap<String,Object>> scheduleList = new ArrayList<HashMap<String,Object>>();
		
		for(int i = 0; i < fullCalendarGenre.size(); i++) {
			HashMap<String,Object> fullMap = new HashMap<String, Object>();
			
			int idx = fullCalendarGenre.get(i).getIdx();
			String title = fullCalendarGenre.get(i).getSchedule_date().substring(11) + ' ' +fullCalendarGenre.get(i).getArt_name();
			String start = fullCalendarGenre.get(i).getSchedule_date().substring(0, 10);
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
	
	@RequestMapping(value="/FullCalendar/Artist", method=RequestMethod.GET)
	@ResponseBody
	@DateTimeFormat(iso=ISO.DATE)
	public List<HashMap<String,Object>> fullCalendarArtist(@RequestParam HashMap<String, Object> map) {
	
		List<PerformanceVo> fullCalendarArtist = performanceService.fullCalendarArtist(map);	
		List<HashMap<String,Object>> scheduleList = new ArrayList<HashMap<String,Object>>();
		
		for(int i = 0; i < fullCalendarArtist.size(); i++) {
			HashMap<String,Object> fullMap = new HashMap<String, Object>();
			
			int idx = fullCalendarArtist.get(i).getIdx();
			String title = fullCalendarArtist.get(i).getSchedule_date().substring(11) + ' ' +fullCalendarArtist.get(i).getArt_name();
			String start = fullCalendarArtist.get(i).getSchedule_date().substring(0, 10);
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

	/* ---------------------------------------------------------------------------------------------------------- 이밑으로  */
	
	@RequestMapping("/performInfo")
	public ModelAndView performInfo(@RequestParam HashMap<String, Object> map) {
		ModelAndView mv = new ModelAndView();
		map.put("idx", "1");
		List<PerformanceVo> performList = performanceService.getPerList(map);
		mv.setViewName("/performance/performInfo");
		mv.addObject("performance",performList);
		return mv;
	}
	
	
	
}
