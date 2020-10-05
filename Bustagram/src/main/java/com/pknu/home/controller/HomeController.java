package com.pknu.home.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	
	@RequestMapping("/")
	public String home() {
		return "home";
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
