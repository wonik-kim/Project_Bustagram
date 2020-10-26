package com.pknu.mypage.service.impl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pknu.mypage.dao.MypageDao;
import com.pknu.mypage.service.MypageService;
import com.pknu.mypage.vo.MypageVo;

@Service("mypageService")
public class MypageServiceImpl implements MypageService {

	@Autowired
	private MypageDao mypageDao;
	
	@Override
	public List<MypageVo> getMemInfo(HashMap<String, Object> map) {
		List<MypageVo> getMemInfo = mypageDao.getMemInfo(map);
		return getMemInfo;
	}

	@Override
	public String[] getProf(HashMap<String, Object> map) {
		List<MypageVo> getProf = mypageDao.getProf(map);
		String [] prof = new String[4];
		if (getProf.isEmpty() || getProf.get(0).getProf_origin_name().equals("profile_default")) {
			MypageVo def_prof = new MypageVo("기본이미지", "profile_default", "jpg", "--");
			prof[0] = def_prof.getProf_origin_name();
			prof[1]  = def_prof.getProf_db_name();
			prof[2] = def_prof.getProf_db_ext();
			prof[3] = def_prof.getProf_date();
			return prof;
		} else {
			prof[0] = getProf.get(0).getProf_origin_name();
			prof[1]  = getProf.get(0).getProf_db_name();
			prof[2] = getProf.get(0).getProf_db_ext();
			prof[3] = getProf.get(0).getProf_date();
			return prof;			
		}
	}

	@Override
	public void addProfImg(HashMap<String, Object> map) {
		mypageDao.addProfImg(map);
	}

	@Override
	public void updateMem(HashMap<String, Object> map) {
		if (map.get("mem_birth_y") != null) {
			String mem_birth = (map.get("mem_birth_y") + "-" + map.get("mem_birth_m") + "-" + map.get("mem_birth_d")).trim();
			map.put("mem_birth", mem_birth);
		}
		if (map.get("mem_mail1") != null && map.get("mem_mail2") != null) {
			String mem_mail = map.get("mem_mail1") + "@" + map.get("mem_mail2");
			map.put("mem_mail", mem_mail);
		}
		
		mypageDao.updateMem(map);
	}

	@Override
	public int checkPwd(HashMap<String, Object> map) {
		int chkPwd = mypageDao.checkPWd(map);
		return chkPwd;
	}

	@Override
	public List<String> getGenre(HashMap<String, Object> map) {
		List<String> list = mypageDao.getGenre(map);
		return list;
	}

	@Override
	public List<MypageVo> getAddr(HashMap<String, Object> map) {
		List<MypageVo> addr_list = mypageDao.getAddr(map);
		return addr_list;
	}

	@Override
	public String  memUpgrade(HashMap<String, Object> map) {
		String flag = mypageDao.memUpgrade(map);
		return flag;
	}



}
