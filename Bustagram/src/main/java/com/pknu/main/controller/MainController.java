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
	
	@RequestMapping("/Main/login_form")
	public String login() {
		return "login_form";
	}
	


	
	

}
