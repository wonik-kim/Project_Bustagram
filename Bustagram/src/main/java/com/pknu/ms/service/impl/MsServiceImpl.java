package com.pknu.ms.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pknu.ms.dao.MsDao;
import com.pknu.ms.service.MsService;
import com.pknu.ms.vo.MsVo;

@Service("msService")
public class MsServiceImpl implements MsService {

	@Autowired
	private MsDao msDao;
	

	@Override
	public Map<String, Object> getMusicList(HashMap<String, Object> map) {
		Map<String, Object> map2 = msDao.getMusicList(map);
		return map2;
	}

	
	
}
