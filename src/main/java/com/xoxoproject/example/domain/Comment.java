package com.xoxoproject.example.domain;

public class Comment {

	private int cm_num;
	private int board_num;
	private String cm_text;
	private String cm_writer;
	
	public int getCm_num() {
		return cm_num;
	}
	public void setCm_num(int cm_num) {
		this.cm_num = cm_num;
	}
	public int getBoard_num() {
		return board_num;
	}
	public void setBoard_num(int board_num) {
		this.board_num = board_num;
	}
	public String getCm_text() {
		return cm_text;
	}
	public void setCm_text(String cm_text) {
		this.cm_text = cm_text;
	}
	public String getCm_writer() {
		return cm_writer;
	}
	public void setCm_writer(String cm_writer) {
		this.cm_writer = cm_writer;
	}
	
	
}
