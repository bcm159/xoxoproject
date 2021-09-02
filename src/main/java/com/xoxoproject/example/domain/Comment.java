package com.xoxoproject.example.domain;

public class Comment {

	private int comment_num;
	private int board_num;
	private String comment_text;
	private String comment_writer;
	
	public int getComment_num() {
		return comment_num;
	}
	public void setComment_num(int comment_num) {
		this.comment_num = comment_num;
	}
	public int getBoard_num() {
		return board_num;
	}
	public void setBoard_num(int board_num) {
		this.board_num = board_num;
	}
	public String getComment_text() {
		return comment_text;
	}
	public void setComment_text(String comment_text) {
		this.comment_text = comment_text;
	}
	public String getComment_writer() {
		return comment_writer;
	}
	public void setComment_writer(String comment_writer) {
		this.comment_writer = comment_writer;
	}
	
	
}
