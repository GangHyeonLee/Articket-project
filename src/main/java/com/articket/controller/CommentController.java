package com.articket.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.articket.VO.CommentVO;
import com.articket.VO.CriteriaVO;
import com.articket.service.CommentService;

@Controller
@RequestMapping("/comment")
public class CommentController {
	
	@Autowired
	private CommentService commentservice;
	
	// 댓글 작성
	@RequestMapping(value = "/write", method = RequestMethod.POST)
	public String writeComment(CommentVO vo) throws Exception {
		commentservice.writeComment(vo);
		return "redirect:/boardDetail?boardId=" + vo.getPost_id();
	}
	
	@GetMapping("/commentUpdate")
	public String commentUpdatePage(CommentVO vo,Model model) {
		model.addAttribute("readComment",vo);
		return "/board/commentUpdate";
	}

	//댓글 수정 POST
	@RequestMapping(value="/commentUpdate", method = RequestMethod.POST)
	public String commentUpdate(CommentVO vo) throws Exception {
		
		commentservice.updateComment(vo);	
		int boardId = vo.getPost_id();
		return "redirect:/board";
	}

	//댓글 삭제
	@RequestMapping(value="/commentDelete")
	public String commentDelete(CommentVO vo) throws Exception {
		
		commentservice.deleteComment(vo);
		
		return "redirect:/board";
	}
}