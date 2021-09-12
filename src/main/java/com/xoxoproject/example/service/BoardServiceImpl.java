package com.xoxoproject.example.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.xoxoproject.example.domain.Board;
import com.xoxoproject.example.domain.Comment;
import com.xoxoproject.example.mapper.BoardMapper;

@Service("BoardServiceImpl")
public class BoardServiceImpl implements BoardService{

	@Autowired BoardMapper boardmapper;
	
	@Override
	public List<Board> selectBoardList(int pagenum){
		return boardmapper.selectBoardList(pagenum);
	}
	
	@Override
	public void insertBoard(Board board) {
		boardmapper.insertBoard(board);
		boardmapper.updateBoard(board);
	}
	
	@Override
	public Board readBoardList(int num) {
		boardmapper.updateRead(num);
		return boardmapper.readBoardList(num);
	}
	
	@Override
	public Board getUpdateBoard(int num) {
		return boardmapper.getUpdateBoard(num);
	}
	
	@Override
	public void updateBoardProcess(Board board) {
		boardmapper.updateBoardProcess(board);
	}
	
	@Override
	public void deleteBoard(int num) {
		boardmapper.deleteBoard(num);
	}

	@Override
	public List<Comment> getComment(int board_num) {
		// TODO Auto-generated method stub
		 return boardmapper.getComment(board_num);
	}

	@Override
	public int countBoard() {
		// TODO Auto-generated method stub
		return boardmapper.countBoard();
	}

	@Override
	public void replyRegister(Comment comment) {
		// TODO Auto-generated method stub
		boardmapper.replyCreate(comment);
	}

	@Override
	public void replyModify(Comment comment) {
		// TODO Auto-generated method stub
		boardmapper.replyUpdate(comment);
	}

	@Override
	public void replyRemove(int comment_num) {
		// TODO Auto-generated method stub
		boardmapper.replyRemove(comment_num);
	}
}
