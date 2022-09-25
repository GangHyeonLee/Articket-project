package com.articket.DAO;

import java.util.Map;


import com.articket.VO.UserVO;

public interface UserDAO {
	
	public UserVO userLogin(UserVO vo) throws Exception;

	public void userJoin(UserVO vo) throws Exception;

	public UserVO userDetail(String login_id) throws Exception;

	public void userEdit(UserVO vo) throws Exception;

	public void userDelete(String id) throws Exception;

	public String userFindId(Map<String, Object> mapId) throws Exception;

	public String userFindPwd(Map<String, Object>mapPwd) throws Exception;

	public int idCheck(String login_id) throws Exception;

	public int nickNameCheck(String nickname) throws Exception;

	public int emailCheck(String email) throws Exception;


}
