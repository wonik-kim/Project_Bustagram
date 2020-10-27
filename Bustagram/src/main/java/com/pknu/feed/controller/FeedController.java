package com.pknu.feed.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.pknu.feed.service.FeedService;
import com.pknu.feed.vo.FeedVo;

@Controller
public class FeedController {
	
	@Autowired FeedService feedService;
	
	@RequestMapping("/post_feed")
	public ModelAndView post_feed() {
		// feedSelect
		HashMap<String, Object> list = new HashMap<>();
		List<FeedVo> fList = feedService.getfeedList(list);
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("fList", fList);
		mv.setViewName("post_feed");
		return mv;
	}
	

	@RequestMapping("/post_feed_write")
	public ModelAndView post_feed_write(@RequestParam HashMap<String, Object> map) {
		// feedInsert
		feedService.writeFeed(map);
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("post_feed");
		
		return mv;
	}	
}
