package com.articket.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.ObjectUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.articket.VO.UserVO;
import com.articket.service.TicketingService;

@Controller
public class TicketingController {
	@Autowired
	TicketingService ts;
	
	@RequestMapping(value="/theaterticketing", method=RequestMethod.GET)
	public ModelAndView theaterticketing(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		
		HttpSession session = request.getSession();
		UserVO uvo = (UserVO) session.getAttribute("nickname");
		
		if (ObjectUtils.isEmpty(uvo)) {
			mv.addObject("msg", "로그인이 필요한 서비스입니다.");
			mv.setViewName("index/theaterindex");
		} else {
			int id = uvo.getId();
			session.setAttribute("id", id);
			mv.setViewName("ticketing/INIpayStdSample/theaterticketing");
		}
		return mv;
	}
	
	@RequestMapping(value="/musicalticketing", method=RequestMethod.GET)
	public ModelAndView musicalticketing(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		
		HttpSession session = request.getSession();
		UserVO uvo = (UserVO) session.getAttribute("nickname");
		
		if (ObjectUtils.isEmpty(uvo)) {
			mv.addObject("msg", "로그인이 필요한 서비스입니다.");
			mv.setViewName("index/theaterindex");
		} else {
			int id = uvo.getId();
			session.setAttribute("id", id);
			mv.setViewName("ticketing/INIpayStdSample/musicalticketing");
		}
		return mv;
	}
	
	@RequestMapping(value="/classicticketing", method=RequestMethod.GET)
	public ModelAndView classicticketing(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		
		HttpSession session = request.getSession();
		UserVO uvo = (UserVO) session.getAttribute("nickname");
		
		if (ObjectUtils.isEmpty(uvo)) {
			mv.addObject("msg", "로그인이 필요한 서비스입니다.");
			mv.setViewName("index/theaterindex");
		} else {
			int id = uvo.getId();
			session.setAttribute("id", id);
			mv.setViewName("ticketing/INIpayStdSample/classicticketing");
		}
		return mv;
	}
	
	
	@RequestMapping(value="/testtt", method=RequestMethod.POST)
	public Map<String,Object> payment(@RequestParam Map<String, Object> param) throws Exception{
	
		int id = ts.payment(param);
		
		Map<String,Object> ticketList = ts.ticketList(id);
		
		
		return ticketList;
		
	}
	
	
	
	@RequestMapping(value="/close", method=RequestMethod.GET)
	public String close() {
		return "ticketing/INIpayStdSample/close";
	}
}
