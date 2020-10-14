package com.pknu.ms.service;

import java.util.HashMap;
import java.util.List;

import com.pknu.ms.vo.MsVo;

public interface MsService {

	List<MsVo> getMusicList(HashMap<String, Object> map);

}
