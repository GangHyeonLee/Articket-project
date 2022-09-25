package com.articket.serviceImpl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.articket.DAO.BoardDAO;
import com.articket.DAO.CommentDAO;
import com.articket.VO.BoardVO;
import com.articket.VO.CommentVO;
import com.articket.service.BoardService;
import com.articket.service.CommentService;

@Service
public class CommentServiceImpl implements CommentService {

	@Autowired
	CommentDAO dao;
	
	// 댓글 조회
	@Override
	public List<CommentVO> readComment(String board_no) throws Exception {
		return dao.readComment(board_no);
	}

	// 댓글 작성
	@Override
	public void writeComment(CommentVO vo) throws Exception {
		dao.writeComment(vo);	
	}
	
	// 댓글 수정
	@Override
	public void updateComment(CommentVO vo) throws Exception {
		dao.updateComment(vo);	
	}
	
	// 댓글 삭제
	@Override
	public void deleteComment(CommentVO vo) throws Exception {
		dao.deleteComment(vo);	
	}
	
	// 선택된 댓글 조회
	@Override
	public CommentVO selectComment(int id) throws Exception {
		return dao.selectComment(id);
	}

}
