package com.pknu.master.controller;

import java.util.HashMap;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.pknu.master.service.MasterService;
import com.pknu.master.vo.MasterVo;

@Controller
public class MasterController {

	@Autowired
	JavaMailSender mailSender;
	
	@Autowired
    MasterService masterService;
	
	@RequestMapping("/signUp")
	public String signUp() {
		return "signUp";
	}

	// mailSending 코드
	@RequestMapping(value = "/Bustagram/createEmailCheck2", method = RequestMethod.GET)
	@ResponseBody
	public String mailSending(HttpServletRequest request) {
		int ran = new Random().nextInt(900000) + 100000;

		String setfrom = "jjwlstjr98@gmail.com";
		String userEmail = request.getParameter("userEmail"); // 받는 사람 이메일
		String title = "인증번호"; // 제목
		String content = Integer.toString(ran); // 내용

		masterService.sendMail(setfrom,userEmail,title,content);

		return "redirect:/mail/mailForm";
	}

	
	@RequestMapping(value="/Master/login", method=RequestMethod.POST)
	public ModelAndView login(HttpSession session, @RequestParam HashMap<String, Object> map) {
		
		MasterVo masterVo = masterService.masterLogin(map);
		
		ModelAndView mv = new ModelAndView();
		
		if(masterVo != null) {
			session.setAttribute("/Master/login", masterVo);
			
			mv.addObject("/Master/login", session.getAttribute("/Master/login"));
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
	
	@RequestMapping("/Master/logout")
	public String logout(HttpSession session) {
		session.removeAttribute("/Master/login");
		session.invalidate();
		
		return "redirect:/";
	}
	
	@RequestMapping("/Master/find_id")
	public String find_id() {
		return "find_id";
	}
	
	@RequestMapping("/Master/find_pwd")
	public String find_pwd() {
		return "find_pwd";
	}
	
	
}
