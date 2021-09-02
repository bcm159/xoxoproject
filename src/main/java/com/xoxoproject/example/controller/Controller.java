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
import com.xoxoproject.example.service.UserService;

@org.springframework.stereotype.Controller
public class Controller {
	private final Logger logger = LoggerFactory.getLogger(this.getClass());
	
	@Autowired UserService userservice;
	@Autowired BoardService boardservice;
	
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
	
	
	

	
	
	
}
