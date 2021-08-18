package com.xoxoproject.example.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.authority.AuthorityUtils;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.xoxoproject.example.domain.Board;
import com.xoxoproject.example.domain.Comment;
import com.xoxoproject.example.domain.User;
import com.xoxoproject.example.service.BoardService;
import com.xoxoproject.example.service.CommentService;
import com.xoxoproject.example.service.UserService;

@org.springframework.stereotype.Controller
public class Controller {
	private final Logger logger = LoggerFactory.getLogger(this.getClass());
	
	@Autowired UserService userservice;
	@Autowired BoardService boardservice;
	@Autowired CommentService commentservice;
	
	String comment;
	
	@RequestMapping("/")
	public String home() {
		return "/index";
	}
	
	@RequestMapping("/login")
	public String login() {
		return "/user/login";
	}
	
	@RequestMapping("/join")
	public String join() {
		return "/user/join";
	}
	
	@PostMapping("/join_process")
	public String join_process(User user) {
		
		
		//비밀번호 암호화
	    String encodedPassword = new BCryptPasswordEncoder().encode(user.getPassword());
	    
	    //유저 데이터 세팅
	    user.setPassword(encodedPassword);
	    user.setAccountNonExpired(true);
	    user.setEnabled(true);
	    user.setAccountNonLocked(true);
	    user.setCredentialsNonExpired(true);
	    user.setAuthorities(AuthorityUtils.createAuthorityList("ROLE_USER"));   
	    
	    //유저 생성
	    userservice.createUser(user);
	    //유저 권한 생성
	    userservice.createAuthorities(user);
		
		return "/user/join_process";
	}
	
	//브랜드소개
	@RequestMapping("/sub01")
	public String sub01() {
		return "/subindex/subindex1";
	}
	
	//게시판
	@RequestMapping("/board")
	public String board(Model model) {
		
		List<Board> list = boardservice.selectBoardList();
		model.addAttribute("list",list);
		
		return "/board/board";
	}
	
	//쓰기
	@RequestMapping("/write")
	public String write(Model model){
		Date today = new Date();
		SimpleDateFormat format1 = new SimpleDateFormat("yyyy-MM-dd");
		model.addAttribute("timestamp",format1.format(today));
		
		return "/board/write";
	}
	
	
	@PostMapping("/write_process")
	public String write_process(@Valid Board board,BindingResult result) {
		if(result.hasErrors()) {
			/* logger.info(result.getAllErrors().get(0).getDefaultMessage()); */
			return "/board/write";
		}
		
		boardservice.insertBoard(board);
		
		return "/board/write_process";
	}
	
	//읽기
	@RequestMapping("/read")
	public String read(@RequestParam(value="num", required=false, defaultValue="1") int num,Model model) {
		Board board = boardservice.readBoardList(num);
		model.addAttribute("board",board);
		return "/board/read";
	}
	
	@RequestMapping("/comment")
	public String comment(@RequestParam String cm_text,Comment comment, Model model) {
		System.out.println(comment.getCm_text());
		System.out.println(comment.getBoard_num());
		
		commentservice.commentInsert(comment);
		return "/board/comment2";
	}
	
	
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
	
	
	
	
	//menu
	@RequestMapping("/hotdog")
	public String menu() {
		return "/menu/hotdog";
	}
	
	@RequestMapping("/coffee")
	public String coffee() {
		return "/menu/coffee";
	}
	
	@RequestMapping("/beverage")
	public String beverage() {
		return "/menu/beverage";
	}
	
	@RequestMapping("/sidemenu")
	public String sidemenu() {
		return "/menu/sidemenu";
	}
	
	
	
}
