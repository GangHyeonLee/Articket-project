package com.articket.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class IndexController {
	
	@RequestMapping(value="/theaterindex", method=RequestMethod.GET)
	public String theaterindex() {
		return "index/theaterindex";
		
	}
	@RequestMapping(value="/musicalindex", method=RequestMethod.GET)
	public String musicalindex() {
		return "index/musicalindex";
		
	}
	@RequestMapping(value="/classicindex", method=RequestMethod.GET)
	public String classicindex() {
		return "index/classicindex";
		
	}

}
