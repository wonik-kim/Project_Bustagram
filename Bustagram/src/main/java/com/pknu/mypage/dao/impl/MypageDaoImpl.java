package com.pknu.mypage.dao.impl;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pknu.mypage.dao.MypageDao;
import com.pknu.mypage.vo.MypageVo;

@Repository("mypageDao")
public class MypageDaoImpl implements MypageDao {
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<MypageVo> getMemInfo(HashMap<String, Object> map) {
		sqlSession.selectList("Mypage.GetMemInfo", map);
		List<MypageVo> getMemInfo = (List<MypageVo>) map.get("result");
		
		return getMemInfo;
	}

	@Override
	public List<MypageVo> getProf(HashMap<String, Object> map) {
		sqlSession.selectOne("Mypage.GetProf", map);
		List<MypageVo> getProf = (List<MypageVo>) map.get("result");
		return getProf;
	}

	@Override
	public void addProfImg(HashMap<String, Object> map) {
		sqlSession.insert("Mypage.SetProf", map);
	}

	@Override
	public void updateMem(HashMap<String, Object> map) {
		System.out.println("dao" + map);
		sqlSession.update("Mypage.UpdateMem", map);
	}

	@Override
	public int checkPWd(HashMap<String, Object> map) {
		sqlSession.selectOne("Mypage.CheckPwd", map);
		int chkPwd = (int) map.get("result");
		return chkPwd;
	}

	@Override
	public List<String> getGenre(HashMap<String, Object> map) {
		sqlSession.selectList("Mypage.GetGenre", map);
		List<String> list = (List<String>) map.get("result");
		return list;
	}

	@Override
	public List<MypageVo> getAddr(HashMap<String, Object> map) {
		sqlSession.selectList("Mypage.GetAddr", map);
		List<MypageVo> addr_list = (List<MypageVo>) map.get("result");
		return addr_list;
	}

	@Override
	public String memUpgrade(HashMap<String, Object> map) {
		sqlSession.insert("Mypage.MemUpgrade", map);
		String flag = (String) map.get("result");
		return flag;
	}


}
