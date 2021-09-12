package com.xoxoproject.example.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.xoxoproject.example.domain.Board;
import com.xoxoproject.example.domain.Comment;

@Mapper
public interface BoardMapper {
	public List<Board> selectBoardList(int pagenum);
	
	//총 게시글 가져오기
	public int countBoard();
	
	//게시글 추가
	public void insertBoard(Board board);
	public void updateBoard(Board board);
	
	//게시글 읽기
	public Board readBoardList(int num);
	public void updateRead(int num);
	
	//댓글 가져오기
	public List<Comment> getComment(int board_num);
	
	//댓글 작성
	public void replyCreate(Comment comment);
	
	//댓글 수정
	public void replyUpdate(Comment comment);
	
	//댓글 삭제
	public void replyRemove(int comment_num);
	
	//게시글 수정
	public Board getUpdateBoard(int num);
	public void updateBoardProcess(Board board);
	
	//게시글 삭제
	public void deleteBoard(int num);
	
	
}
