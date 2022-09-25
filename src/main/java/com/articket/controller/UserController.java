package com.articket.controller;

import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;
import java.util.Random;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.ObjectUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.articket.VO.UserVO;
import com.articket.service.MailSendService;
import com.articket.service.UserService;



@Controller
@RequestMapping("/user")
public class UserController {
	private static final Logger logger = LoggerFactory.getLogger(UserController.class);
	
	@Autowired
	private UserService service;
	
	@Autowired
	private MailSendService mailService;
	
	// 로그인 페이지
	@RequestMapping("/loginPage")
	public String userLoginPage() {
		return "/user/UserLogin";
	}
	
	// 로그인
	@RequestMapping("/login")
	public ModelAndView userLogin(@ModelAttribute  UserVO vo, HttpSession session) throws Exception {
		UserVO nickname = service.userLogin(vo, session);
		ModelAndView mav = new ModelAndView();
		if(vo.getLogin_id().equals("")) {
			
			mav.setViewName("/user/UserLogin"); 		
			mav.addObject("message", "error2");
		}
		
		if(!vo.getLogin_id().equals("") && !vo.getPassword().equals("")) {
			if(nickname != null) {	// 로그인 성공 시
				session.setAttribute("nickname", nickname);
				mav.setViewName("redirect:/theaterindex"); // 뷰의 이름 // 로그인 성공시 메인페이지로 이동.
			} else {	// 로그인 실패 시
				mav.setViewName("/user/UserLogin");
				mav.addObject("message", "error");
			}
		}
		
		if(!vo.getLogin_id().equals("") && vo.getPassword().equals("")) {
			mav.setViewName("user/UserLogin"); 		
			mav.addObject("message", "error3");
		}
		
		return mav;

	}
	
	// 회원가입 페이지
	@RequestMapping("/joinPage")
	public String userJoinPage() {
		return "/user/UserSignup";
	}
	
	// 회원가입
	@RequestMapping("/join")
	public String userJoin(@ModelAttribute UserVO vo) throws Exception {
		service.userJoin(vo);
		return "redirect:/theaterindex";
	}
	
	// 아이디 중복 검사
	@RequestMapping(value = "/idCheck", method = RequestMethod.POST)
	@ResponseBody
	public int idCheck(@RequestParam("login_id") String login_id) throws Exception {
		return service.idCheck(login_id);
	}
	
	// 별명 중복 검사
	@RequestMapping(value = "/nickNameCheck", method = RequestMethod.POST)
	@ResponseBody
	public int nickNameCheck(@RequestParam("nickname") String nickname) throws Exception{
		return service.nickNameCheck(nickname);
	}
	
	// 이메일 중복 검사
	@RequestMapping(value = "/emailCheck", method = RequestMethod.POST)
	@ResponseBody
	public int emailCheck(@RequestParam("email") String email) throws Exception{
		return service.emailCheck(email);
	}
	
	// 회원 정보
    @RequestMapping("/detail")
    public ModelAndView userDetail(@RequestParam String nickname) throws Exception {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("/user/UserDetail");
        mav.addObject("userDetail", service.userDetail(nickname));
        return mav;
    }
    
	 // 정보 수정 페이지
    @RequestMapping("/editPage")
    public ModelAndView userEditPage(@RequestParam String nickname) throws Exception {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("/user/UserEdit");
        mav.addObject("userEdit", service.userDetail(nickname));
        return mav;
    }

    // 정보 수정
    @RequestMapping("/edit")
    public String userEdit(@ModelAttribute UserVO vo, HttpSession session) throws Exception {
    	
    	service.userEdit(vo);
    	String encodedParam = URLEncoder.encode(vo.getNickname(), "UTF-8");
    	
    	session.removeAttribute("nickname");
    	session.setAttribute("nickname", vo);
    	
        return "redirect:/user/detail?nickname=" + encodedParam;
    }

    // 회원 삭제
    @RequestMapping("/delete")
    public String userDelete(@RequestParam String id, HttpSession session) throws Exception {
        service.userDelete(id, session);
        return "redirect:/theaterindex";
    }

    // 로그아웃
    @RequestMapping(value = "/logout", method = RequestMethod.GET)
    public String userLogout(HttpSession session) throws Exception {
    	session.invalidate();
    	return "redirect:/theaterindex";
    }

    // 회원 정보 찾기 페이지
    @RequestMapping("/findPage")
    public String userFindPage() {
        return "/user/UserFind";
    }

    // 아이디 찾기 페이지
    @RequestMapping(value="/findIdPage", method = RequestMethod.GET)
    public ModelAndView userFindIdPage() {
    	ModelAndView mav = new ModelAndView();
    	
    	mav.setViewName("/user/UserFindId");
        return mav;
    }
    
    // 아이디 찾기
    @ResponseBody
    @RequestMapping(value="/findId")
    public Map<String, Object> userFindId(@RequestParam Map<String, Object> param) throws Exception {
    	
    	Map<String,Object> resultMap = new HashMap<String, Object>();
    	String resultId = service.userFindId(param);
    	
    	
    	if (ObjectUtils.isEmpty(resultId)) {
    		resultMap.put("result" , "error");
    	} else {
    		resultMap.put("result", "success");
    		resultMap.put("login_id", resultId);
    	}
    	
    	return resultMap;
    }

    // 비밀번호 찾기 페이지
    @RequestMapping(value="/findPwPage", method=RequestMethod.GET)
    public ModelAndView userFindPwPage() {
    	ModelAndView mav = new ModelAndView();
    	mav.setViewName("/user/UserFindPw");
        
    	return mav;
    }

    // 비밀번호 찾기
    @ResponseBody
    @RequestMapping(value="/findPwd")
    public Map<String, Object> userFindPwd(@RequestParam Map<String, Object> param) throws Exception {

		Map<String,Object> resultMap = new HashMap<String, Object>();
		String resultPwd = service.userFindPwd(param);

		
		if (ObjectUtils.isEmpty(resultPwd)) {
			resultMap.put("result" , "error");
		} else {
			resultMap.put("result", "success");
			resultMap.put("password", resultPwd);
		}
		
		return resultMap;
    }
    
    //이메일 인증
    @GetMapping("/mailCheck")
    @ResponseBody 
    public String mailCheck(String email) {
    	System.out.println("이메일 인증 요청이 들어옴!");
    	System.out.println("이메일 인증 이메일 : " + email); 
    	return mailService.joinEmail(email); 
    }
	 
}