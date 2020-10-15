package com.pknu.master.dao;

import java.util.HashMap;
import java.util.List;

import com.pknu.master.vo.MasterVo;

public interface MasterDao {


	void insAuth(HashMap<String, Object> map);

	void signUp(HashMap<String, Object> map);

	int idCheck(HashMap<String, Object> map);

	int findId(HashMap<String, Object> map);

	List<MasterVo> idGet(HashMap<String, Object> map);


}
