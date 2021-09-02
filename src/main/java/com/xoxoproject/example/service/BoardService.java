package com.xoxoproject.example.service;

import java.util.List;

import com.xoxoproject.example.domain.Board;
import com.xoxoproject.example.domain.Comment;

public interface BoardService {
	public List<Board> selectBoardList();
	
	//게시글 추가
	public void insertBoard(Board board);
	
	//게시글 읽기
	public Board readBoardList(int num);
	
	//댓글 가져오기
	public List<Comment> getComment(int num);
	
	//게시글 수정
	public Board getUpdateBoard(int num);
	public void updateBoardProcess(Board board);
	
	//게시글 삭제
	public void deleteBoard(int num);
}
