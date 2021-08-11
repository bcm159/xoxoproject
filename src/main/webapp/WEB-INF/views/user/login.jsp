<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login</title>
<link rel="stylesheet" href="/css/common.css">
<link rel="stylesheet" href="/css/style.css">
</head>
<style>
/* 이유는 모르겠으나 css에 넣으면 전체적으로 오류 생긴다.*/
.bodytitle {
    text-align: center;
    margin: 200px 0 0 0;

}

.bodytitle h3 {
    font-size: 2.2rem;
    font-style: italic;
    letter-spacing: -1px;
}

.bodytitle h2 {
    font-size: 3.5rem;
    letter-spacing: -3px;

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