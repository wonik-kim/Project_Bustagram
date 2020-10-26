package com.pknu.mypage.controller;

import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.pknu.mypage.service.MypageService;
import com.pknu.mypage.vo.MypageVo;

@Controller
public class MypageController {
	
	@Autowired
	private MypageService mypageService;
	
	@RequestMapping("/Mypage/MemInfo")
	public ModelAndView memInfo(HttpSession session, @RequestParam HashMap<String, Object> map) {
		map.put("login", session.getAttribute("login"));
		List<MypageVo> getMemInfo = mypageService.getMemInfo(map);		// 멤버 정보
		String[] getProf = mypageService.getProf(map);					// 프로필 등록 여부

		String[] birth=getMemInfo.get(0).getMem_birth().split("-");
		if (birth[1].indexOf("0")==0) {
			birth[1]=birth[1].replace("0", "");
		}
		if (birth[2].indexOf("0")==0) {
			birth[2]=birth[2].replace("0", "");
		}
		List<String> gen_list = mypageService.getGenre(map);
		map.put("region_lvl", "1");
		List<MypageVo> addr1_list = mypageService.getAddr(map);
		map.remove("region_lvl");
		map.put("region_lvl", "2");
		map.put("parent_id", getMemInfo.get(0).getStr_addr1_id());
		List<MypageVo> addr2_list = mypageService.getAddr(map);
		ModelAndView mv = new ModelAndView();
		mv.addObject("addr1_list", addr1_list);
		mv.addObject("addr2_list", addr2_list);
		mv.addObject("gen_list", gen_list);
		mv.addObject("birth", birth);
		mv.addObject("getMemInfo", getMemInfo);
		mv.addObject("getProf", getProf);
		System.out.println(getMemInfo);
		mv.setViewName("mypage/user");
		
		return mv;
	}
	
	
	@RequestMapping(value="/Mypage/MemInfo/Addr", method=RequestMethod.POST)
	@ResponseBody
	public List<MypageVo> MemInfo(@RequestParam HashMap<String, Object> map) {
		List<MypageVo> addr2_list = mypageService.getAddr(map);
		return addr2_list;
	}
	
	@RequestMapping("/Mypage/Profile/UpdateForm")
	public ModelAndView updateProfileForm(@RequestParam HashMap<String, Object> map) {
		ModelAndView mv = new ModelAndView();

		mv.setViewName("mypage/profile_update");
		return mv;
	}
	
	@RequestMapping(value="/Mypage/Profile/Update", produces="application/String;charset=utf8", method=RequestMethod.POST)
	public ModelAndView updateProfile(MultipartFile file, @RequestParam HashMap<String, Object> map) {
		// 파일 처리
		if (!file.isEmpty()) {
			mypageService.addProfImg(map);
			String rootUploadDir = "C:\\final_upload\\profile\\";
			String fileName =  map.get("mid") + "." + map.get("prof_db_ext");
			File saveFile = new File(rootUploadDir, fileName);
			try {
				file.transferTo(saveFile);
			} catch (IllegalStateException e) {
				System.out.println(e);
			} catch (IOException e) {
				System.out.println(e);
			}
		} else if (map.get("prof_irigin_name") != null || map.get("prof_db_ext") != null) {
			mypageService.addProfImg(map);
		}
		
		// 멤버 정보 변경
		
		mypageService.updateMem(map);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("redirect:/Mypage/MemInfo?mid=" + map.get("mid"));
		return mv;
	}
	
	@RequestMapping("/Mypage/PwdForm")
	public ModelAndView pwdForm(@RequestParam HashMap<String, Object> map) {
		ModelAndView mv = new ModelAndView();
		
		mv.addObject("map", map);
		mv.setViewName("mypage/checkPwd");
		return mv;
	}
	
	@RequestMapping(value="/Mypage/CheckPwd", method=RequestMethod.POST)
	public ModelAndView checkPwd(@RequestParam HashMap<String, Object> map) {
		int pwdChk = mypageService.checkPwd(map);
		ModelAndView mv = new ModelAndView();
		if (pwdChk == 0) {
			String msg = "비밀번호가 틀렸습니다";
			mv.addObject("msg", msg);
			mv.addObject("pwdChk", pwdChk);
			mv.setViewName("redirect:/Mypage/PwdForm");
			return mv;
		} else {
			mv.addObject("old_pwd", map.get("mem_pwd"));
			mv.setViewName("mypage/updatePwd");
			return mv;
		} 
	}
	
	@RequestMapping("/Mypage/UpdatePwd")
	public ModelAndView updatePwd(HttpSession session, @RequestParam HashMap<String, Object> map) {
		ModelAndView mv = new ModelAndView();
		mypageService.updateMem(map);
		mv.addObject("map", map);
		mv.setViewName("mypage/checkPwd");
		return mv;
	}
	
	@RequestMapping(value="/Mypage/MemUpgrade", method=RequestMethod.POST)
	@ResponseBody
	public String updatePwd(@RequestParam HashMap<String, Object> map) {
		mypageService.memUpgrade(map);
		String flag = (String) map.get("flag");
		
		return flag;
	}
}
