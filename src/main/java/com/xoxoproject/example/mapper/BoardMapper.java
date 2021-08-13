package com.xoxoproject.example.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.xoxoproject.example.domain.Board;

@Mapper
public interface BoardMapper {
	public List<Board> selectBoardList();
	
	//게시글 추가
	public void insertBoard(Board board);
	public void updateBoard(Board board);
	
	//게시글 읽기
	public Board readBoardList(int num);
	public void updateRead(int num);
	
	//게시글 수정
	public Board getUpdateBoard(int num);
	public void updateBoardProcess(Board board);
	
	//게시글 삭제
	public void deleteBoard(int num);
}
