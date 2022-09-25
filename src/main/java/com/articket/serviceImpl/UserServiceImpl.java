package com.articket.serviceImpl;

import java.util.HashMap;
import java.util.Hashtable;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.articket.DAO.UserDAO;
import com.articket.VO.UserVO;
import com.articket.service.UserService;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDAO dao;

	@Autowired
	private static Hashtable<String, String> loginUsers = new Hashtable<String, String>();

	// 로그인
	@Override
	public UserVO userLogin(UserVO vo, HttpSession session) throws Exception {
		UserVO nickname = dao.userLogin(vo);
		if(nickname != null) {
			session.setAttribute("login_id", vo.getLogin_id());
			session.setAttribute("nickname", nickname);
		}
		return nickname;
	}
	
	// 회원 가입
	@Override
	public void userJoin(UserVO vo) throws Exception {
		vo.setLogin_id(vo.getLogin_id());
		vo.setPassword(vo.getPassword());
		vo.setNickname(vo.getNickname());
		vo.setName(vo.getName());
		vo.setEmail(vo.getEmail());
		vo.setPhone_number(vo.getPhone_number());

		dao.userJoin(vo);
	}
	
	// MY PAGE
	@Override
	public UserVO userDetail(String login_id) throws Exception {
		return dao.userDetail(login_id);
	}
	
	// 회원 정보 수정
	@Override
	public void userEdit(UserVO vo) throws Exception {
		dao.userEdit(vo);
	}
	
	// 회원 탈퇴
	@Override
	public void userDelete(String id, HttpSession session) throws Exception {
		session.invalidate();
		dao.userDelete(id);
	}
	
	// 회원 아이디 찾기
	@Override
	public String userFindId(Map<String,Object> mapId) throws Exception {
		return dao.userFindId(mapId);
	}
	
	// 회원 비밀번호 찾기
	@Override
	public String userFindPwd(Map<String, Object>mapPwd) throws Exception {
		return dao.userFindPwd(mapPwd);
	}
	
	// 아이디 중복체크
	@Override
	public int idCheck(String login_id) throws Exception {
		return dao.idCheck(login_id);
	}
	
	// 닉네임 중복체크
	@Override
	public int nickNameCheck(String nickname) throws Exception {
		return dao.nickNameCheck(nickname);
	}
	
	// 이메일 중복체크
	@Override
	public int emailCheck(String email) throws Exception {
		return dao.emailCheck(email);
	}

}
