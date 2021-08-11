<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login</title>
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

    address,
    em {
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
    
 

    .bodytitle {
        /*  1)*/
        text-align: center;
        margin: 200px 0 0 0;

    }

    .bodytitle h3 {
        /*  1-2)*/
        font-size: 2.2rem;
        font-style: italic;
        letter-spacing: -1px;
    }

    .bodytitle h2 {
        /*  1-3)*/
        font-size: 3.5rem;
        letter-spacing: -3px;

    }

    .inputinfor {
        /*  overflow: hidden;*/
        width: 410px;
        height: 100px;
        margin: auto;
    }

    .inputbox {
        overflow: hidden;
    }

    .inputleft {
        float: left;
        margin-top: 20px;
        
    }

    .inputleft input {
        display: block;
        width: 300px;
        height: 50px;
        border-radius: 10px;
        border:1px solid rgba(0, 0, 0, 0.5);
    }

    .inputright {
        margin: 19px 0 5px 2px;
        float: left;
        text-align: center;
        background: #dd1a32;
        border: 1px solid #dd1a32;
        /*  border-radius: 5px;*/
        font-size: 1.5rem;
        border-radius: 10px;
    }

    .inputright button {
        color: white;
        width: 100px;
        line-height: 100px;
        font-size: 1.5rem;
    }


    .inputbox2 {
        float: right;
        display: inline-block;
        margin-top: 5px;
    }

    .inputbox2 span {}

    .inputbox2 span:nth-child(3) {
        margin-right: 120px;
    }
</style>
<body>
	<div class="bodytitle">
        <h2>Board LOGIN</h2>
    </div>

    <div class="inputinfor">
        <div class="inputbox">
       		<form action="loginPro" method="post">
       			<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
	            <div class="inputleft">
		            
		                <input type="text" name="username">
		                <input type="password" name="password">    
	            </div>
	            <div class="inputright">
	                <button type="submit">로그인</button>
	            </div>
            </form>
           	
        </div>
        <div class="inputbox2">
            <span><a href="join">회원가입</a></span>
            <span><a href="">/ ID 찾기</a></span>
            <span><a href="">/ password 찾기</a></span>
        </div>
    </div>
    
</body>
</html>