package com.pknu.dummy.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class DummyController {

	@RequestMapping("/")
	public String music_station()
	{
		return "music_station";
	}
	
}
