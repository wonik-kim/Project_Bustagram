package com.pknu.feed.service;

import java.util.HashMap;
import java.util.List;

import com.pknu.feed.vo.FeedVo;

public interface FeedService {

	void writeFeed(HashMap<String, Object> map);

	List<FeedVo> getfeedList(HashMap<String, Object> list);

}
