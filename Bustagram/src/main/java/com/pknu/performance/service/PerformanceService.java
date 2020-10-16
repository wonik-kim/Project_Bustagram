package com.pknu.performance.service;

import java.util.HashMap;
import java.util.List;

import com.pknu.performance.vo.PerformanceVo;

public interface PerformanceService {

	List<PerformanceVo> scheduleRegion(HashMap<String, Object> map);

	List<PerformanceVo> scheduleRegionGugun(HashMap<String, Object> map);

	List<PerformanceVo> scheduleGenre(HashMap<String, Object> map);

	List<PerformanceVo> scheduleArtist(HashMap<String, Object> map);

	List<PerformanceVo> schedulePerformance(HashMap<String, Object> map);

	PerformanceVo scheduleDetail(HashMap<String, Object> map);

	List<PerformanceVo> fullCalendarRegion(HashMap<String, Object> map);

}
