package com.pknu.admin.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.pknu.admin.service.AdminService;
import com.pknu.admin.vo.AdminVo;

@Controller
public class AdminController {

	@Autowired
	AdminService adminService;
	
	
	
	@RequestMapping(value="/Admin/login", method=RequestMethod.POST)
	public ModelAndView login(HttpSession session, @RequestParam HashMap<String, Object> map) {
		AdminVo adminVo = adminService.adminLogin(map);
		
		ModelAndView mv = new ModelAndView();
		
	
		if(adminVo != null || session.getAttribute("login") != null ){
			session.setAttribute("login", adminVo);
			mv.addObject("login", session.getAttribute("login"));
			
			switch(adminVo.getLvl()) {
			case "U" : mv.setViewName("redirect:/MainLogin");
				break;
			case "M" : mv.setViewName("redirect:/AdminLogin");
				break;
			case "A" : mv.setViewName("redirect:/MainLogin");
				break;
			case "P" : mv.setViewName("redirect:/MainLogin");
				break;
			default:
				System.out.println("예외");
			}
		
		} else {
			mv.setViewName("redirect:/Main/login_form");
		}
		return mv;
		
	}
	
	
	@RequestMapping("/MainLogin")
	public String mainLogin() {
		return "Main";
	}
	
	@RequestMapping("/AdminLogin")
	public String adminLogin() {
		return "redirect:/AdminList";
	}
	
	@RequestMapping("/BusckerLogin")
	public String busckerLogin() {
		return "Main";
	}
	
	@RequestMapping("/StoreLogin")
	public String storeLogin() {
		return "Main";
	}

	
	
	
	@RequestMapping("/Admin/logout")
	public String logout(HttpSession session) {
		session.removeAttribute("/Admin/login");
		session.invalidate();
		
		return "redirect:/";
	}
	
	@RequestMapping("/AdminList")
	public ModelAndView adminList(@RequestParam HashMap<String, Object> map) {
		
		List<AdminVo> listPost = adminService.getListPost(map);
		List<AdminVo> memberList = adminService.getMemberList(map);
		List<AdminVo> artistList = adminService.getArtistList(map);
		List<AdminVo> storeList = adminService.getStoreList(map);
		List<AdminVo> scheduleList = adminService.getScheduleList(map);
		List<AdminVo> blackList = adminService.getBlackList(map);
		List<AdminVo> inquiryList = adminService.getInquiryList(map);
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("listPost", listPost);
		mv.addObject("memberList", memberList);
		mv.addObject("artistList", artistList);
		mv.addObject("storeList", storeList);
		mv.addObject("scheduleList", scheduleList);
		mv.addObject("blackList", blackList);
		mv.addObject("inquiryList", inquiryList);
		
		
		
		mv.setViewName("/master/MainMaster");
		
		return mv;
	}
	
	
}
