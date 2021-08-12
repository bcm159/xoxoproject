<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="/css/common.css">
<link rel="stylesheet" href="/css/style.css">
</head>
<body>
	<div class="container_join">
        <div class="join_box">
        	<form action="/write_process" method="post">
	            <div class="input_box">
	            	<sec:authorize access="isAuthenticated()">
		               <sec:authentication property="principal" var="principal"/>
		               
		               		<input type="hidden" name="board_name" value="${principal.uName }">
		               		<p>작성자</p>
			                <input type="text" value=${principal.username} readonly name="board_id">
			                <p>제목</p>
			                <input type="text" name="board_sub">
			                <p>비밀번호</p>
			                <input type="password" name="board_pw">
			                <p>내용</p>
			                <p><textarea cols="65" rows="15" name="board_text"></textarea></p>
	            	</sec:authorize>
	            
	            </div>
	            
	            <div class="rewrite-btn">
	                <button class="rewrite-btn-b1" type="submit">저장</button>
	            </div>
            </form>
            
            </div>
	            
        </div>
</body>
</html>