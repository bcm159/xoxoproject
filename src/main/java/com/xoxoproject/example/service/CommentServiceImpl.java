package com.xoxoproject.example.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.xoxoproject.example.domain.Comment;
import com.xoxoproject.example.mapper.CommentMapper;

@Service("CommentServiceImpl")
public class CommentServiceImpl implements CommentService{
	@Autowired CommentMapper commentmapper;
	
	//댓글 개수
	@Override
	public int commentCount(){
		return commentmapper.commentCount();
	};
	
	//댓글 목록
	@Override
	public List<Comment> commentList(){
		return commentmapper.commentList();
	};
	
	//댓글 작성
	public void commentInsert(Comment comment) {
		commentmapper.commentInsert(comment);
	};
	
	
	//댓글 수정
	public void commentUpdate(Comment comment) {
		commentmapper.commentUpdate(comment);
	};
	
	//댓글 삭제
	public void commentDelete(int cno) {
		commentmapper.commentDelete(cno);
	};
}
