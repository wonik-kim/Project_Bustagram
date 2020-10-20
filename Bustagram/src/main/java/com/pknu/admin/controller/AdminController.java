package com.pknu.admin.controller;

import java.util.HashMap;

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
		
	
		if(adminVo != null){
			mv.addObject("/Admin/login", session.getAttribute("/Admin/login"));
			session.setAttribute("/Admin/login", adminVo);
			
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
	
	@RequestMapping(value="/Admin/idCheck", method=RequestMethod.POST)
	@ResponseBody
	public String idCheck(@RequestParam HashMap<String, Object> map) {
		
		String idResult = adminService.idCheck(map);

		if(idResult != null) {
			return "-1";
		} else {
			System.out.println("null");
			return "0";
		}
		
		
	}
	
	@RequestMapping("/MainLogin")
	public String mainLogin() {
		return "MainLogin";
	}
	
	@RequestMapping("/AdminLogin")
	public String adminLogin() {
		return "/master/MainMaster";
	}
	
	@RequestMapping("/BusckerLogin")
	public String busckerLogin() {
		return "MainLogin";
	}
	
	@RequestMapping("/StoreLogin")
	public String storeLogin() {
		return "MainLogin";
	}

	@RequestMapping("/PostList")
	public String postList() {
		return "/master/postList";
	}
	
	
	
	@RequestMapping("/Admin/logout")
	public String logout(HttpSession session) {
		session.removeAttribute("/Admin/login");
		session.invalidate();
		
		return "redirect:/";
	}
	
}
