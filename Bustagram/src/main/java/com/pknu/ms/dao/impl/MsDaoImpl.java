package com.pknu.ms.dao.impl;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pknu.ms.dao.MsDao;
import com.pknu.ms.vo.MsVo;

@Repository("msDao")
public class MsDaoImpl implements MsDao {

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<MsVo> getMusicList(HashMap<String, Object> map) {
		sqlSession.selectList("MS.MusicList", map);
		
		List<MsVo> list = (List<MsVo>)map.get("result");
		
		System.out.println("map: " + map);
		
		System.out.println("list:" + list);
		
		return list;
	}

	
	
}
