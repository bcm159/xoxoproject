<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="comment-box">
	<form id="comment" action="comment" method="post">
		<input type="text" class="comment_text" name="cm_text"> 
		<input type="hidden" name="comment_writer" value="${board.board_name }">
		<input type="hidden" name="board_num" value="${board.board_num }">
		<button type="button" class="create-comment-b1">댓글</button>
	</form>
</div>

<div class="comment-list">
	<c:forEach items="${comment }" var="comment" varStatus="status">
		<span id="comment_write">${comment.comment_writer }</span>
        <span id="comment_text">${comment.comment_text }</span>
        
        <button class="comment-button">수정</button>
        <button class="comment-button">삭제</button>
	</c:forEach>
</div>
</body>
</html>