package com.pknu.ms.dao;

import java.util.HashMap;
import java.util.List;

import com.pknu.ms.vo.MsVo;

public interface MsDao {

	List<MsVo> getMusicList(HashMap<String, Object> map);
	
	

}
