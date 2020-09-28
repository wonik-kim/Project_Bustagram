package com.pknu.main.controller;

import java.util.HashMap;

import javax.servlet.http.HttpSession;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.pknu.main.service.MainService;



@Controller
public class MainController {
	
	private MainService mainService;

	
	@RequestMapping(value="/")
	public String Main() {
		
		return "Main";
		
	}

}
