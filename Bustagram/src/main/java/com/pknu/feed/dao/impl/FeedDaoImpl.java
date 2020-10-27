package com.pknu.feed.dao.impl;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pknu.feed.dao.FeedDao;
import com.pknu.feed.vo.FeedVo;

@Repository("FeedDao")
public class FeedDaoImpl implements FeedDao {
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public void writeFeed(HashMap<String, Object> map) {
			sqlSession.insert("Feed.feedWrite", map);
			System.out.println("피드 작성 완료");
	}

	@Override
	public List<FeedVo> getFeedList(HashMap<String, Object> list) {
		sqlSession.selectList("Feed.feedList", list);
		List<FeedVo> fList = (List<FeedVo>) list.get("result");
		return fList;
	}
}
