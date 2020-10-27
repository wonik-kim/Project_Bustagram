package com.pknu.home.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.pknu.feed.vo.FeedVo;

@Controller
public class HomeController {
	
	@RequestMapping("/")
	public String home() {
		return "home";
	}
	
	@RequestMapping("/test")
	public String test() {
		return "test";
	}
}
