package com.xoxoproject.example.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.xoxoproject.example.domain.Board;
import com.xoxoproject.example.service.BoardService;
import com.xoxoproject.example.service.UserService;


@Controller
@RequestMapping("/board")
public class BoardController {
	@Autowired UserService userservice;
	@Autowired BoardService boardservice;
	
	//게시판
	@RequestMapping("/")
	public String board(Model model) {
		
		List<Board> list = boardservice.selectBoardList();
		model.addAttribute("list",list);
		
		return "/board/board";
	}
}
