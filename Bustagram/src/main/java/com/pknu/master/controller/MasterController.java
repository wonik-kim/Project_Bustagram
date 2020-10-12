package com.pknu.master.controller;

import java.util.Random;


import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.pknu.master.service.MasterService;

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


}
