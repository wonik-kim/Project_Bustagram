package com.pknu.mypage.dao;

import java.util.HashMap;
import java.util.List;

import com.pknu.mypage.vo.MypageVo;

public interface MypageDao {

	List<MypageVo> getMemInfo(HashMap<String, Object> map);

	List<MypageVo> getProf(HashMap<String, Object> map);

	void addProfImg(HashMap<String, Object> map);

	void updateMem(HashMap<String, Object> map);

	int checkPWd(HashMap<String, Object> map);

	List<String> getGenre(HashMap<String, Object> map);

	List<MypageVo> getAddr(HashMap<String, Object> map);

	String memUpgrade(HashMap<String, Object> map);


}
