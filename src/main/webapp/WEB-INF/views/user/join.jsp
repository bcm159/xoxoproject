<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>join</title>
<link rel="stylesheet" href="/css/common.css">
<link rel="stylesheet" href="/css/style.css">
</head>

<body>
	<div class="container">
        <div class="join_box">
        	<form action="/join_process" method="post">
	            <div class="input_box">
	                <p>이름</p>
	                <input type="text" name="uName">
	            </div>
	            <div class="input_box">
	                <p>나이</p>
	                <input type="text" name="uAge">
	            </div>
	            <div class="input_box">
	                <p>아이디</p>
	                <input type="text" name="username">
	            </div>
	            <div class="input_box">
	                <p>비밀번호</p>
	                <input type="text" name="password">
	            </div>
	            <div class="input_box">
	                <p>비밀번호 확인</p>
	                <input type="text">
	            </div>
	            <div class="join-btn">
	                <button class="join-btn-b1" type="submit">회원가입</button>
	            </div>
	    	</form>
        </div>
    </div>
</body>
</html>