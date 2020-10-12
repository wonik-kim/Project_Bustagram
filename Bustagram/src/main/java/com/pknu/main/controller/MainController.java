package com.pknu.main.controller;

import java.util.HashMap;

import javax.servlet.http.HttpSession;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.pknu.main.service.MainService;



@Controller
public class MainController {
	
	@RequestMapping("/")
	public String home() {
		return "Main";
	}
	
	@RequestMapping("login")
	public String login() {
		return "login";
	}
	
	@RequestMapping("find_id")
	public String find_id() {
		return "find_id";
	}
	
	@RequestMapping("find_pwd")
	public String find_pwd() {
		return "find_pwd";
	}

	
	

}
