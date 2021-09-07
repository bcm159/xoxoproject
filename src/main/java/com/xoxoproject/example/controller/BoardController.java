package com.xoxoproject.example.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.xoxoproject.example.domain.Board;
import com.xoxoproject.example.domain.Comment;
import com.xoxoproject.example.domain.Pagination;
import com.xoxoproject.example.service.BoardService;

@Controller
@RequestMapping("/board")
public class BoardController {

	@Autowired
	BoardService boardservice;

	int rpage = 1;

	@GetMapping("/board")
	public String board(Model model, @RequestParam(value = "page", required = false, defaultValue = "1") String page) {
		String fpage = page;
		if (fpage != null)
			rpage = Integer.parseInt(fpage);

		int count = boardservice.countBoard();
		Pagination pagination = new Pagination(rpage, count);
		List<Board> list = boardservice.selectBoardList(pagination.getPageNum());

		model.addAttribute("list", list);
		model.addAttribute("pagination", pagination);
		return "/board/board";
	}

	// 쓰기
	@GetMapping("/write")
	public String write(Model model) {

		Date today = new Date();
		SimpleDateFormat format1 = new SimpleDateFormat("yyyy-MM-dd");
		model.addAttribute("timestamp", format1.format(today));

		return "/board/write";
	}

	@PostMapping("/write_process")
	public String write_process(Board board) {

		boardservice.insertBoard(board);

		return "/board/write_process";
	}

	// 읽기
	@GetMapping("/read")
	public String read(@RequestParam(value = "num", required = false, defaultValue = "1") int num, Model model) {
		Board board = boardservice.readBoardList(num);
//		List<Comment> comment = boardservice.getComment(num);

		model.addAttribute("board", board);
//		model.addAttribute("comment", comment);
		return "/board/read";
	}

	// 댓글목록 조회
	@GetMapping("/comment")
	public String comment(int board_num, Model model) throws Exception {

		List<Comment> comment = boardservice.getComment(board_num);

		model.addAttribute("comment", comment);
		return "/board/comment";

	}

	// 댓글 쓰기
	@PostMapping("/commentRegister")
	public String commentRegister(Model model, Comment comment) throws Exception {

		Integer board_num = comment.getBoard_num();
		boardservice.replyRegister(comment);

		// 추가된 댓글 리스트 다시 요청
		List<Comment> replyList = boardservice.getComment(board_num);
		model.addAttribute("comment", replyList);

		return "/board/comment";
	}

	// 수정
	@PostMapping("/update")
	public String update(@RequestParam int num, Model model) {
		Board board = boardservice.getUpdateBoard(num);
		model.addAttribute("board", board);
		return "/board/update";
	}

	@PostMapping("/update_process")
	public String update_process(Board board) {
		boardservice.updateBoardProcess(board);
		return "/board/update_process";
	}

	// 삭제
	@PostMapping("/delete")
	public String delete(@RequestParam int num) {
		boardservice.deleteBoard(num);
		return "/board/delete";
	}

}
