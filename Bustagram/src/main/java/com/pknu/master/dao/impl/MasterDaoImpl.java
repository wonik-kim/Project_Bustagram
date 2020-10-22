package com.pknu.master.dao.impl;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pknu.master.dao.MasterDao;
import com.pknu.master.vo.MasterVo;

@Repository
public class MasterDaoImpl implements MasterDao {
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public void insAuth(HashMap<String, Object> map) {
		System.out.println("insAuth :  " + map);
		sqlSession.insert("Master.mailAuth",map);
		
	}

	@Override
	public void signUp(HashMap<String, Object> map) {
		System.out.println("signUp Value : " + map);
		sqlSession.insert("Master.signUp",map);
		
	}

	@Override
	public int idCheck(HashMap<String, Object> map) {
		 System.out.println("idCheck : " + map);
		 // sqlSession.selectOne("Master.idCheck",map);
		 
		 int result = sqlSession.selectOne("Master.idCheck",map); 
		 System.out.println("result : " + result);
		 return result;
	}

	@Override
	public int findId(HashMap<String, Object> map) {
		int findId = sqlSession.selectOne("Master.findId",map);
		
		System.out.println("findId : " + findId);
		//System.out.println("findId.get(0)  :" + findId.get(0));
		//System.out.println("findId.get(1)  :" + findId.get(1));
		return findId;
	}

	@Override
	public List<MasterVo> idGet(HashMap<String, Object> map) {
		sqlSession.selectOne("Master.idGet",map);
		List<MasterVo> idGet = (List<MasterVo>) map.get("mid");
		System.out.println("map : " + map);
		System.out.println("DaoImpl idGet : " + idGet);
		return idGet;
	}


}
