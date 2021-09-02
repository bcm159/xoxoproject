<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link rel="stylesheet" href="/css/common.css">
<link rel="stylesheet" href="/css/style.css">
</head>
<body>
	<div class="container_join">
        <div class="join_box">
        	<form:form action="/board/write_process" modelAttribute="board" method="post" id="writeForm">
	            <div class="input_box">
	            	<sec:authorize access="isAuthenticated()">
		               <sec:authentication property="principal" var="principal"/>
		               		<input type="hidden" name="board_date" value="${timestamp }">
		               		<input type="hidden" name="board_name" value="${principal.uName }">
		               		<p>작성자</p>
			                <input type="text" value=${principal.username} readonly name="board_id">
			                
		                	<p>제목</p>
			                <input type="text" name="board_sub" id="board_sub">
			                
			                <p>비밀번호</p>
			                <input type="password" name="board_pw">
			                <p>내용</p>
			                <p><textarea cols="65" rows="15" name="board_text" id="board_text"></textarea></p>
	            	</sec:authorize>
	            
	            </div>
	            
	            <div class="rewrite-btn">
	                <button class="rewrite-btn-b1" type="submit">저장</button>
	            </div>
            </form:form>
            
            </div>
	            
        </div>


</body>
</html>