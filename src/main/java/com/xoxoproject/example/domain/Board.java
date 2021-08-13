package com.xoxoproject.example.domain;


public class Board {

	private int board_num;		//idx
	private String board_date;	//날짜
	private String board_name;	//이름
	private String board_sub;	//제목
	private String board_pw;	//비밀번호
	private String board_text;	//내용
	private int board_read;		//읽은 횟수
	private String board_id;	//아이디
	
	private int board_groupId;
	private int board_groupOrder;
	private int board_groupDepth;
	
	
	
	public int getBoard_num() {
		return board_num;
	}
	public void setBoard_num(int board_num) {
		this.board_num = board_num;
	}
	
	
	
	public String getBoard_date() {
		return board_date;
	}
	public void setBoard_date(String board_date) {
		this.board_date = board_date;
	}
	public String getBoard_name() {
		return board_name;
	}
	public void setBoard_name(String board_name) {
		this.board_name = board_name;
	}
	public String getBoard_sub() {
		return board_sub;
	}
	public void setBoard_sub(String board_sub) {
		this.board_sub = board_sub;
	}
	public String getBoard_pw() {
		return board_pw;
	}
	public void setBoard_pw(String board_pw) {
		this.board_pw = board_pw;
	}
	public String getBoard_text() {
		return board_text;
	}
	public void setBoard_text(String board_text) {
		this.board_text = board_text;
	}
	public int getBoard_read() {
		return board_read;
	}
	public void setBoard_read(int board_read) {
		this.board_read = board_read;
	}
	public String getBoard_id() {
		return board_id;
	}
	public void setBoard_id(String board_id) {
		this.board_id = board_id;
	}
	public int getBoard_groupId() {
		return board_groupId;
	}
	public void setBoard_groupId(int board_groupId) {
		this.board_groupId = board_groupId;
	}
	public int getBoard_groupOrder() {
		return board_groupOrder;
	}
	public void setBoard_groupOrder(int board_groupOrder) {
		this.board_groupOrder = board_groupOrder;
	}
	public int getBoard_groupDepth() {
		return board_groupDepth;
	}
	public void setBoard_groupDepth(int board_groupDepth) {
		this.board_groupDepth = board_groupDepth;
	}
}
