package com.pknu.admin.dao.impl;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pknu.admin.dao.AdminDao;
import com.pknu.admin.vo.AdminVo;

@Repository("adminDao")
public class AdminDaoImpl implements AdminDao {

	@Autowired
	private SqlSession sqlSession;

	@Override
	public AdminVo adminLogin(HashMap<String, Object> map) {
		
		AdminVo adminVo =  sqlSession.selectOne("Admin.UserLogin", map);
		
		
		return adminVo;
	}


	@Override
	public List<AdminVo> getListPost(HashMap<String, Object> map) {

		sqlSession.selectList("Admin.PostList", map);
		List<AdminVo> listPost = (List<AdminVo>) map.get("result");
		
		
		return listPost;
	}


	@Override
	public List<AdminVo> getMemberList(HashMap<String, Object> map) {

		sqlSession.selectList("Admin.MemberList", map);
		List<AdminVo> memberList = (List<AdminVo>) map.get("result");
		
		return memberList;
	}


	@Override
	public List<AdminVo> getArtistList(HashMap<String, Object> map) {

		sqlSession.selectList("Admin.ArtistList", map);
		List<AdminVo> artistList = (List<AdminVo>) map.get("result");
		
		return artistList;
	}


	@Override
	public List<AdminVo> getStoreList(HashMap<String, Object> map) {
		
		sqlSession.selectList("Admin.StoreList", map);
		List<AdminVo> storeList = (List<AdminVo>) map.get("result");
		
		return storeList;
	}


	@Override
	public List<AdminVo> getScheduleList(HashMap<String, Object> map) {

		sqlSession.selectList("Admin.ScheduleList", map);
		List<AdminVo> scheduleList = (List<AdminVo>) map.get("result");
		
		return scheduleList;
	}


	@Override
	public List<AdminVo> getBlackList(HashMap<String, Object> map) {

		sqlSession.selectList("Admin.BlackList", map);
		List<AdminVo> blackList = (List<AdminVo>) map.get("result");
		
		
		return blackList;
	}


	@Override
	public List<AdminVo> getInquiryList(HashMap<String, Object> map) {

		sqlSession.selectList("Admin.InquiryList", map);
		List<AdminVo> inquiryList = (List<AdminVo>) map.get("result");
		
		
		return inquiryList;
	}
	
	
	
}
