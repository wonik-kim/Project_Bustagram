package com.pknu.master.dao;

import java.util.HashMap;

import com.pknu.master.vo.MasterVo;

public interface MasterDao {

	public MasterVo masterLogin(HashMap<String, Object> map);

}
