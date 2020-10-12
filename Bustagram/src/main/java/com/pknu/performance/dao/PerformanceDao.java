package com.pknu.performance.dao;

import java.util.HashMap;
import java.util.List;

import com.pknu.performance.vo.PerformanceVo;

public interface PerformanceDao {

	List<PerformanceVo> scheduleRegion(HashMap<String, Object> map);

	List<PerformanceVo> scheduleRegionGugun(HashMap<String, Object> map);

}
