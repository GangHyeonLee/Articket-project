package com.articket.DAOImpl;

import java.util.List;
import java.util.Map;


import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.articket.DAO.CommentDAO;
import com.articket.DAO.UserDAO;
import com.articket.VO.CommentVO;
import com.articket.VO.UserVO;

@Repository
public class CommentDAOImpl implements CommentDAO {
	
	@Autowired 
	SqlSessionTemplate sql;
	
	private static final String nameSpace = "comment";
	
	// 댓글 조회
	@Override
	public List<CommentVO> readComment(String board_no) throws Exception {
		return sql.selectList(nameSpace + ".readComment", board_no);
	}
	
	// 댓글 작성
	@Override
	public void writeComment(CommentVO vo) throws Exception {
		sql.insert(nameSpace + ".writeComment", vo);
	}
	
	// 댓글 수정
	@Override
	public void updateComment(CommentVO vo) throws Exception {
		sql.update(nameSpace + ".updateComment", vo);
	}
	
	// 댓글 삭제
	@Override
	public void deleteComment(CommentVO vo) throws Exception {
		sql.delete(nameSpace + ".deleteComment", vo);
	}
	
	// 선택된 댓글 조회
	@Override
	public CommentVO selectComment(int id) throws Exception {
		return sql.selectOne(nameSpace + ".selectComment", id);
	}
	
	

}
