<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:forEach items="${comment}" var="item" varStatus="status">
	<span id="comment_writer">${item.comment_writer }</span>
    <span id="comment_text">${item.comment_text }</span>
    <button class="comment-button">수정</button>
    <button class="comment-button">삭제</button>
    <br>
</c:forEach>

<script>
	
	//댓글 수정 버튼 클릭시 이벤트
	$(".comment-button").on("click",function(){
		
		let board_num = $("#board_num").val();
		let reply_num = $(this).attr("data");
		let reply_list = $(this).parent();		//여러개의 클래스들 중 내가 클릭한 것만 가져오기
		let reply_writer = reply_list.children()
	})

</script>

