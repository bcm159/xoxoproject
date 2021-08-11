<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>join</title>
</head>
<style>
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
    }

    body,html {
        font-size: 12px;
    }

    ol,ul {
        list-style: none;
    }

    h1,h2,h3,h4,h5,h6 {
        font-size: 100%;
    }

    a {
        text-decoration: none;
        color: inherit;
    }

    img {
        vertical-align: bottom;
    }

    address,em {
        font-style: normal;
    }

    table {
        border-collapse: collapse;
    }

    button {
        border: none;
        background: transparent;
        cursor: pointer;
    }
    
    .container{
        width: 100%;
        height: 600px;
    }
    
    .join_box{
        border: 1px solid #ccc;
        width: 500px;
        height: 550px;
        margin:100px auto;
        border-radius: 5px;
        box-shadow: 5px 5px 10px rgba(0, 0, 0, 0.11);
    }
    
    .input_box{}
    
    .input_box p{
        margin: 20px 0 0 10px;
        line-height: 30px;
        font-size: 20px;
    }
    
    .input_box input{
        margin:10px 0 0 10px;
        width: 475px;
        line-height: 30px;
        border:1px solid #ccc;
        border-radius: 5px;
    }
    
    .join-btn{
        border: 1px solid #ccc;
        line-height: 40px;
        width: 90px;
        font-size: 16px;
        float: right;
        margin: 20px 15px 0 0;
        border-radius: 5px;
        background-color:#dd1a32;
        color: white;
        text-align: center;
        transition:0.3s;
        
    }
    .join-btn:hover{
        background: white;
        color: #dd1a32;
    }
    
    .join-btn-b1{
        font-size: 16px;
        line-height: 40px;
        color: white;
    }
</style>
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