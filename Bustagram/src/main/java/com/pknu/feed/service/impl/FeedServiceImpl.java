package com.pknu.feed.service.impl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pknu.feed.dao.FeedDao;
import com.pknu.feed.service.FeedService;
import com.pknu.feed.vo.FeedVo;

@Service("FeedService")
public class FeedServiceImpl implements FeedService {
	
	@Autowired
	private FeedDao feedDao;

	@Override
	public void writeFeed(HashMap<String, Object> map) {
		feedDao.writeFeed(map);
		
	}

	@Override
	public List<FeedVo> getfeedList(HashMap<String, Object> list) {
		List<FeedVo> fList = feedDao.getFeedList(list);
		return fList;
	}

	

}
