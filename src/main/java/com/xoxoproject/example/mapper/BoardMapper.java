package com.xoxoproject.example.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.xoxoproject.example.domain.Board;

@Mapper
public interface BoardMapper {
	public List<Board> selectBoardList();
}
