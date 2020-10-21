package com.pknu.ms.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.pknu.ms.service.MsService;
import com.pknu.ms.vo.MsVo;

@Controller
public class MsController {

	@Autowired
	private MsService msService;
	
	@RequestMapping("/ms")
	public String musicStation() {
		return "musicStation";
	}
	
	//@RequestMapping(value = "MS/getList", produces = "application/text; charset=utf8")
	//@ResponseBody 
	//public Map<String, Object> MusicList(@RequestParam HashMap<String, Object> map, HttpServletResponse response) throws JsonProcessingException
	//{	
		//Map<String, Object> map2 = msService.getMusicList(map);
	    
		//jackson 라이브러리
	    //자바 객체를 json으로 만들어주자. 
	    //ObjectMapper mapper = new ObjectMapper();
	    
	    //String jsonStr = mapper.writeValueAsString(list);
	    
	    //System.out.println(jsonStr);
	    
		//System.out.println(map2);
		
		//return map2;
	//}
	
	@RequestMapping(value = "MS/getList", produces = "application/text; charset=utf8")
	@ResponseBody
	public Map<String, Object> MusicList(@RequestParam HashMap<String, Object> map) throws JsonProcessingException
	{
		Map<String, Object> map2 = msService.getMusicList(map);
		
	    System.out.println("map 두번쨰는 " + map2.get("result"));
		
        ObjectMapper mapper = new ObjectMapper();
	    
	    String jsonStr = mapper.writeValueAsString(map2.get("result"));
	    
	    System.out.println(jsonStr);
	    
	    
		System.out.println(map2);
		return map2;
	}
	
	
}
