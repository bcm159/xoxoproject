package com.xoxoproject.example.service;

import java.util.List;

import com.xoxoproject.example.domain.Board;

public interface BoardService {
	public List<Board> selectBoardList();
	
	//게시글 추가
	public void insertBoard(Board board);
	
	//게시글 읽기
	public Board readBoardList(int num);
}
