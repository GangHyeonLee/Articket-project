package com.articket.service;

import java.util.List;
import java.util.Map;

import com.articket.VO.BoardVO;
import com.articket.VO.CriteriaVO;

public interface BoardService {

	 List<BoardVO> list(CriteriaVO cri) throws Exception;
	 
	 int countList() throws Exception;

	 String create(Map<String, Object> map) throws Exception;

	 Map<String, Object> detail(Map<String, Object> map) throws Exception;
	 
	 boolean update(Map<String, Object> map) throws Exception;
	 
	 boolean remove(Map<String, Object> map) throws Exception;
	 
	 List<Object> find_loginId( List<Map<String, Object>> param) throws Exception;
	 
	 String updateViewCnt(String boardId) throws Exception;

}
