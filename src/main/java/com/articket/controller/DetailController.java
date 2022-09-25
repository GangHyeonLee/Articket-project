package com.articket.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.util.ObjectUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.articket.VO.UserVO;

@Controller
public class DetailController {
	
	@RequestMapping(value="/theaterdetail", method=RequestMethod.GET)
	public ModelAndView theaterdetail(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		
		HttpSession session = request.getSession();
		UserVO uvo = (UserVO) session.getAttribute("nickname");
		
		if (ObjectUtils.isEmpty(uvo)) {
			mv.addObject("msg", "no_login");
			mv.setViewName("detail/theaterdetail");
		} else {
			int id = uvo.getId();
			session.setAttribute("id", id);
			mv.setViewName("detail/theaterdetail");
		}
		return mv;
	}
	
	@RequestMapping(value="/musicaldetail", method=RequestMethod.GET)
	public ModelAndView musicaldetail(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		
		HttpSession session = request.getSession();
		UserVO uvo = (UserVO) session.getAttribute("nickname");
		
		if (ObjectUtils.isEmpty(uvo)) {
			mv.addObject("msg", "no_login");
			mv.setViewName("detail/musicaldetail");
		} else {
			int id = uvo.getId();
			session.setAttribute("id", id);
			mv.setViewName("detail/musicaldetail");
		}
		return mv;
	}
	@RequestMapping(value="/classicdetail", method=RequestMethod.GET)
	public ModelAndView classicdetail(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		
		HttpSession session = request.getSession();
		UserVO uvo = (UserVO) session.getAttribute("nickname");
		
		if (ObjectUtils.isEmpty(uvo)) {
			mv.addObject("msg", "no_login");
			mv.setViewName("detail/classicdetail");
		} else {
			int id = uvo.getId();
			session.setAttribute("id", id);
			mv.setViewName("detail/classicdetail");
		}
		return mv;
	}

}
