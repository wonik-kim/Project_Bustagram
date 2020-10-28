package com.pknu.admin.service.impl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pknu.admin.dao.AdminDao;
import com.pknu.admin.service.AdminService;
import com.pknu.admin.vo.AdminVo;

@Service("adminService")
public class AdminServiceImpl implements AdminService {

	@Autowired
	private AdminDao adminDao;
	
	@Override
	public AdminVo adminLogin(HashMap<String, Object> map) {
		
		AdminVo adminVo = adminDao.adminLogin(map);
		
		
		
		return adminVo;
	}


	@Override
	public List<AdminVo> getListPost(HashMap<String, Object> map) {

		List<AdminVo> listPost = adminDao.getListPost(map); 
		
		
		return listPost;
	}


	@Override
	public List<AdminVo> getMemberList(HashMap<String, Object> map) {

		List<AdminVo> memberList = adminDao.getMemberList(map);
		
		return memberList;
	}


	@Override
	public List<AdminVo> getArtistList(HashMap<String, Object> map) {

		List<AdminVo> artistList = adminDao.getArtistList(map);
		
		return artistList;
	}


	@Override
	public List<AdminVo> getStoreList(HashMap<String, Object> map) {
		
		List<AdminVo> storeList = adminDao.getStoreList(map);
		
		return storeList;
	}


	@Override
	public List<AdminVo> getScheduleList(HashMap<String, Object> map) {

		List<AdminVo> scheduleList = adminDao.getScheduleList(map);
		
		return scheduleList;
	}


	@Override
	public List<AdminVo> getBlackList(HashMap<String, Object> map) {
		
		List<AdminVo> blackList = adminDao.getBlackList(map);
		
		return blackList;
	}


	@Override
	public List<AdminVo> getInquiryList(HashMap<String, Object> map) {
		
		List<AdminVo> inquiryList = adminDao.getInquiryList(map);
		
		return inquiryList;
	}

}
