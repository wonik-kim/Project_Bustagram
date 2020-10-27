package com.pknu.feed.dao;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.pknu.feed.vo.FeedVo;

@Repository
public interface FeedDao {

	void writeFeed(HashMap<String, Object> map);

	List<FeedVo> getFeedList(HashMap<String, Object> list);

}
