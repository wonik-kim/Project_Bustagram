package com.pknu.main.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;



@Controller
public class MainController {
	
	@RequestMapping("/")
	public String home() {
		return "Main";
	}
	
	@RequestMapping("/Main/login_form")
	public String login() {
		return "login_form";
	}
	


	
	

}
