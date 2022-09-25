package com.articket.serviceImpl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.articket.DAO.BoardDAO;
import com.articket.VO.BoardVO;
import com.articket.VO.CriteriaVO;
import com.articket.service.BoardService;

@Service
public class BoardServiceImpl implements BoardService {

	@Autowired
	BoardDAO dao;
	//게시글조회
	
//	
	
	public String create(Map<String, Object> map) {
		int affectRowCount = this.dao.insert(map);
		
		String result = "";
		if(affectRowCount == 1) {
			result = "SUCCESS";
		}else {
			result = "ERROR";
		}
		return result;
	}
	
	public Map<String, Object> detail(Map<String, Object> map) {

		return this.dao.selectDetail(map);
	}
	
	
	public boolean update(Map<String, Object> map) {  
		int affectRowCount = this.dao.update(map);  
		return affectRowCount == 1;  

	}
	
	public boolean remove(Map<String, Object> map){
		int affectRowCount = this.dao.delete(map);
		return affectRowCount == 1;
	}

	
	public List<Object> find_loginId(List<Map<String, Object>> param) {
		// TODO Auto-generated method stub
		return null;
	}

	
	public String updateViewCnt(String view) throws Exception {
		return dao.updateViewCnt(view);
		
	}

	@Override
	public List<BoardVO> list(CriteriaVO cri) throws Exception {
		
		return dao.list(cri);
	}

	@Override
	public int countList() {
		return dao.countList();
	}
	

	
	// 총 게시글 개수 확인
	/*
	 * public int getBoardListCnt(Search search) throws Exception { return
	 * BoardDAO.getBoardListCn;t(search); }
	 */
	// 조회수 올리기
	/*
	 * public List<Map<String, Object>> updatereviewcnt(BoardVO id) throws
	 * Exception{ return dao.list(id); }
	 */



}
