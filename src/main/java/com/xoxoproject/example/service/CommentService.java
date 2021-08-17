package com.xoxoproject.example.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.xoxoproject.example.domain.Comment;

@Service
public interface CommentService {

	//댓글 개수
	public int commentCount();
	
	//댓글 목록
	public List<Comment> commentList();
	
	//댓글 작성
	public void commentInsert(Comment comment);
	
	
	//댓글 수정
	public void commentUpdate(Comment comment);
	
	//댓글 삭제
	public void commentDelete(int cno);
	
}
