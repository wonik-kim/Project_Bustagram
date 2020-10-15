package com.pknu.admin.controller;

import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
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
		
		if(adminVo != null) {
			session.setAttribute("/Admin/login", adminVo);
			
			mv.addObject("/Admin/login", session.getAttribute("/Admin/login"));
			mv.setViewName("redirect:/MainLogin");
		}
		else {
			mv.setViewName("redirect:/Main/login_form");
		}
		return mv;
		
	}
	
	@RequestMapping("/MainLogin")
	public String mainLogin() {
		return "MainLogin";
	}
	
	@RequestMapping("/Admin/logout")
	public String logout(HttpSession session) {
		session.removeAttribute("/Admin/login");
		session.invalidate();
		
		return "redirect:/";
	}
	
}
