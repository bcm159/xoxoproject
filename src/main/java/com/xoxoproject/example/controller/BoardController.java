package com.xoxoproject.example.controller;


import java.security.Principal;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.xoxoproject.example.domain.Board;
import com.xoxoproject.example.domain.Comment;
import com.xoxoproject.example.service.BoardService;

@Controller
@RequestMapping("/board")
public class BoardController {
	
	@Autowired BoardService boardservice;
	
	@GetMapping("/board")
	public String board(Model model) {
		
		List<Board> list = boardservice.selectBoardList();
		model.addAttribute("list",list);
		
		return "/board/board";
	}
	
	//쓰기
	@GetMapping("/write")
	public String write(Model model){
		
		Date today = new Date();
		SimpleDateFormat format1 = new SimpleDateFormat("yyyy-MM-dd");
		model.addAttribute("timestamp",format1.format(today));
		
		return "/board/write";
	}
	
	
	@PostMapping("/write_process")
	public String write_process(Board board) {
		
		
		boardservice.insertBoard(board);
		
		return "/board/write_process";
	}
	
	//읽기
	@GetMapping("/read")
	public String read(@RequestParam(value="num", required=false, defaultValue="1") int num,Model model) {
		Board board = boardservice.readBoardList(num);
		List<Comment> comment = boardservice.getComment(num);
		
		model.addAttribute("board",board);
		model.addAttribute("comment", comment);
		return "/board/read";
	}
	
//	@GetMapping("/comment")
//	public String comment(@RequestParam String cm_text,Comment comment, Model model) {
//		System.out.println(comment.getCm_text());
//		System.out.println(comment.getBoard_num());
//		
//		commentservice.commentInsert(comment);
//		return "/board/comment2";
//	}
	
	
	//수정
	@PostMapping("/update")
	public String update(@RequestParam int num,Model model) {
		Board board = boardservice.getUpdateBoard(num);
		model.addAttribute("board",board);
		return "/board/update";
	}
	
	@PostMapping("/update_process")
	public String update_process(Board board) {
		boardservice.updateBoardProcess(board);
		return "/board/update_process";
	}
	
	//삭제
	@PostMapping("/delete")
	public String delete(@RequestParam int num) {
		boardservice.deleteBoard(num);
		return "/board/delete";
	}
		
}
