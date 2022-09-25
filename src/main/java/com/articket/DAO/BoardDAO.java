package com.articket.DAO;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.articket.VO.BoardVO;
import com.articket.VO.CriteriaVO;

@Repository
public class BoardDAO {
	
	@Autowired
	SqlSessionTemplate sql;
	
	private static final String nameSpace2 = "board";
	
	// 게시판 글 목록
	public List<BoardVO> list(CriteriaVO cri){
		return sql.selectList("board.select_list",cri);
	}
	
	// 게시판 글 등록
	public int insert(Map<String, Object> map) {
		return sql.insert(nameSpace2 + ".insert", map);
	}
	
	// 게시판 글 상세정보
	public Map<String, Object> selectDetail(Map<String,Object> map){
		return sql.selectOne(nameSpace2 + ".select_detail", map);
	}
	
	// 게시판 글 수정
	public int update(Map<String, Object> map) {
		return sql.update(nameSpace2 + ".update", map);
	}
	
	// 게시판 글 삭제
	public int delete(Map<String, Object> map) {
		return this.sql.delete(nameSpace2 + ".delete", map);
	}
	
	//게시판 조회수 증가
	public String updateViewCnt(String view) throws Exception{
		return sql.selectOne(nameSpace2 + ".updateViewCnt", view);
	}
	
	//게시판 전체 글 갯수 조회
	public int countList() {
		return sql.selectOne(nameSpace2+".count_list");
	}

	/*
	 * public List<Object> find_loginId(List<Map<String, Object>> param) { return
	 * sql.selectList(nameSpace2 + ".find_loginId", param); }
	 */
	
	
}
