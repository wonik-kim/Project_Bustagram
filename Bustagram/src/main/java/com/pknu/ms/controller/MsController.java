package com.pknu.ms.controller;

import java.util.List;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.pknu.ms.service.MsService;
import com.pknu.ms.vo.MsVo;

@Controller
public class MsController {

	@Autowired
	private MsService msService;
	
	@RequestMapping("/ms")
	public String musicStation() {
		return "music_station";
	}
	
	@RequestMapping(value = "MS/getList", produces = "application/text; charset=utf8")
	@ResponseBody // 객체를 JSON으로 변환해서 보냄 
	public String MusicList(@RequestParam HashMap<String, Object> map)
	{
		System.out.println(map);
		
	    List<MsVo> list = msService.getMusicList(map);
	    
		
		
		return null;
	}
	
}
