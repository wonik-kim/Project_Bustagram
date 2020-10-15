package com.pknu.ms.service.impl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pknu.ms.dao.MsDao;
import com.pknu.ms.service.MsService;
import com.pknu.ms.vo.MsVo;

@Service("noticeService")
public class MsServiceImpl implements MsService {

	@Autowired
	private MsDao msDao;
	

	@Override
	public List<MsVo> getMusicList(HashMap<String, Object> map) {
		List<MsVo> list = msDao.getMusicList(map);
		return null;
	}

	
	
}
