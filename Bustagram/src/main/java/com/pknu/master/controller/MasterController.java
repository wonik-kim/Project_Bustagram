package com.pknu.master.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

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
	@RequestMapping(value = "/Bustagram/createEmailCheck2", method = RequestMethod.POST)
	@ResponseBody
	public String mailSending(@RequestParam HashMap<String, Object> map, HttpServletRequest request) {
		int ran = new Random().nextInt(900000) + 100000;

		String setfrom = "jjwlstjr98@gmail.com";
		String memmail = request.getParameter("memmail"); // 받는 사람 이메일
		String title = "Bustragram 회원가입 인증번호"; // 제목
		String content = "인증번호는 \"";
		content += Integer.toString(ran); // 내용
		content += "\" 입니다 \n 인증번호를 입력해주세요.";

		// map.put("memmail",memmail);
		map.put("ran", ran);

		// System.out.println("memmail before : "+memmail);
		masterService.sendMail(setfrom, memmail, title, content);
		masterService.insAuth(map);

		return Integer.toString(ran);
	}
	
	@RequestMapping(value = "/Bustagram/idCheck", method = RequestMethod.POST)
	@ResponseBody
	public int idCheck(@RequestParam HashMap<String,Object> map) {
		
		int result = masterService.idCheck(map);
		return result;
	}

	@RequestMapping(value = "/signUpComplete", method = RequestMethod.POST)
	public String signUpComplete(@RequestParam HashMap<String, Object> map) {
		map.remove("pass");
		map.remove("random");

		String year  = (String) map.get("year");
		       year += "/";

		String month  = (String) map.get("month");
		       month += "/";

		String day    = (String) map.get("day");
		String birth  = year + month + day;
		
		map.put("birth",birth);
		
		map.remove("year");
		map.remove("month");
		map.remove("day");
		System.out.println("signUp1 : " + map);
		masterService.signUp(map);

		return "redirect:/";
	}
	
	@RequestMapping("/forgot")
	public String forgot() {
		return "forgot";
	}
	
	@RequestMapping(value = "/idFind", method = RequestMethod.POST)
	@ResponseBody
	public int findId(@RequestParam HashMap<String,Object> map, HttpServletRequest request) {
		//List<MasterVo> idInfo = masterService.findId(map);
		int result = masterService.findId(map);
		System.out.println("findId key || value : " + map);
		System.out.println("result : " + result);
		if (result == 1) {
			/* List<MasterVo> idGet = masterService.idGet(map); */
			System.out.println("idGet begin ----> ");
			masterService.idGet(map);
			
			/*
			 * String setfrom = "jjwlstjr98@gmail.com"; String memmail =
			 * request.getParameter("memmail"); // 받는 사람 이메일 String title =
			 * "Bustragram 회원가입 인증번호"; // 제목 String content = "회원님의 아이디는 \""; content +=
			 * "\" 입니다. \n ";
			 * 
			 * // map.put("memmail",memmail);
			 * 
			 * // System.out.println("memmail before : "+memmail);
			 * masterService.sendMail(setfrom, memmail, title, content);
			 */
		 	
		}
		/*
		 * else { masterService.findId(map); }
		 */
		
		
		return result;
	}

}
