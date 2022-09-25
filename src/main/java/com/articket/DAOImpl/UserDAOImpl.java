package com.articket.DAOImpl;

import java.util.Map;


import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.articket.DAO.UserDAO;
import com.articket.VO.UserVO;

@Repository
public class UserDAOImpl implements UserDAO {
	
	@Autowired 
	SqlSessionTemplate sql;
	
	private static final String nameSpace = "user";
	
	// 로그인
	@Override
	public UserVO userLogin(UserVO vo) throws Exception {
		return sql.selectOne(nameSpace + ".userLogin", vo);
	}
	
	// 회원가입
	@Override
	public void userJoin(UserVO vo) throws Exception {
		sql.insert(nameSpace + ".userJoin", vo);
	}
	
	// 회원 상세 정보
	@Override
	public UserVO userDetail(String login_id) throws Exception {
		return sql.selectOne(nameSpace + ".userDetail", login_id);
	}
	
	// 회원 수정
	@Override
	public void userEdit(UserVO vo) throws Exception {
		sql.update(nameSpace + ".userEdit", vo);
	}

	// 회원 삭제
	@Override
	public void userDelete(String id) throws Exception {
		sql.delete(nameSpace + ".userDelete", id);
	}
	
	// 회원 아이디 찾기
	public String userFindId(Map<String, Object>mapId) throws Exception {
		return sql.selectOne(nameSpace + ".userFindId", mapId);
	}
	
	// 회원 비밀번호 찾기
	public String userFindPwd(Map<String, Object>mapPwd) throws Exception {
		return sql.selectOne(nameSpace + ".userFindPw", mapPwd);
	}

	// 아이디 체크
	@Override
	public int idCheck(String login_id) throws Exception {
		return sql.selectOne(nameSpace + ".idCheck", login_id);
	}
	
	// 별명 체크
	public int nickNameCheck(String nickname) {
		return sql.selectOne(nameSpace + ".nickNameCheck", nickname);
	}
	
	// 이메일 체크
	@Override
	public int emailCheck(String email) {
		return sql.selectOne(nameSpace + ".emailCheck", email);
	}

}
