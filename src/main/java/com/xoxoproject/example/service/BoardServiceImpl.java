package com.xoxoproject.example.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.xoxoproject.example.domain.Board;
import com.xoxoproject.example.mapper.BoardMapper;

@Service("BoardServiceImpl")
public class BoardServiceImpl implements BoardService{

	@Autowired BoardMapper boardmapper;
	
	@Override
	public List<Board> selectBoardList(){
		return boardmapper.selectBoardList();
	}
}