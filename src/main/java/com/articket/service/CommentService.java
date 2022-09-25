package com.articket.service;

import java.util.List;
import java.util.Map;

import com.articket.VO.BoardVO;
import com.articket.VO.CommentVO;

public interface CommentService {
	
	// 댓글 조회
	public List<CommentVO> readComment(String board_no) throws Exception;
	
	// 댓글 작성
	public void writeComment(CommentVO vo) throws Exception;
	
	// 댓글 수정
	public void updateComment(CommentVO vo) throws Exception;
	
	// 댓글 삭제
	public void deleteComment(CommentVO vo) throws Exception;
	
	// 선택된 댓글 조회
	public CommentVO selectComment(int id) throws Exception;

}
