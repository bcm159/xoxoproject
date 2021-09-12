<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<c:forEach items="${comment}" var="item" varStatus="status">
<div>
	<input type="hidden" name="data" value="${item.comment_num }" id="comment_num">
	<span class="comment_writer">${item.comment_writer }</span>
    <span class="comment_text">${item.comment_text }</span>
    
   
    <button class="comment-modifybtn" data="${item.comment_num}">수정</button>
    <button class="comment-deletebtn" data="${item.comment_num}">삭제</button>
</div>
</c:forEach>

<script>
	
	//댓글 수정 버튼 클릭시 이벤트
	$(".comment-modifybtn").on("click",function(){
		// $("[name='data']").val();
		// $("#comment_num").val();
		let board_num = $("#board_num").val();
		let comment_num = $(this).attr("data");
		let reply_list = $(this).parent();		//여러개의 클래스들 중 내가 클릭한 것만 가져오기
		let comment_writer = reply_list.children('.comment_writer').text();
		let comment_text = reply_list.children('.comment_text').text();
		
		let editor = "<div class='replyEditor'>"
					+"<input type='text' class='comment_text' id='comment_text' value="+comment_text+">"
					+"<button type='button' class='btnReplyRegister' data='"+comment_num+"'>등록</button>"
					+"<button type='button' class='btnReplyCancel' data='"+comment_num+"'>취소</button>"
					+"</div>";
					
		$('.comment_text').show();						//모든 댓글 내용 보여주기
		$('.replyEditor').remove();						//모든 댓글 수정 에디터 지우기
		
		reply_list.append(editor);						//현재 수정할 댓글에 대한 에디터 추가
		reply_list.children('.comment_text').hide();	//현재 댓글 내용을 숨기기
		
		//댓글 수정 등록 버튼 클릭 이벤트
		$('.btnReplyRegister').on("click",function(){
			let btn=$(this);
			let reply_num = btn.attr("data");
			let comment_text = btn.parent().children('.comment_text').val();
			
			replyUpdate(comment_num, board_num, comment_text);
		})
		
		//댓글 수정 취소 클릭 이벤트
		$('.btnReplyCancel').on("click",function(){
			$(".comment_text").show();
			$('.replyEditor').remove();
		})
	})
	
	//댓글 삭제 클릭 이벤트
	$(".comment-deletebtn").on("click", function(){
		let board_num = $('#board_num').val();
		let comment_num = $(this).attr('data');
		replyRemove(comment_num, board_num);
	})
	
	function replyUpdate(comment_num, board_num, comment_text){
		
		$.ajax({
			url : '/board/commentModify',
			type : 'post',
			data : {
				'comment_num' : comment_num,
				'board_num' : board_num,
				'comment_text' : comment_text
			},
			dataType : 'text',
			
			success: function(data){
				$('.comment-list').empty();		//댓글목록 지우기
				$('.comment-list').append(data);
			},
			
			error: function(xhr, status, error){
				alert("code=" + xhr.status + "message=" +xhr.responseText + "exception =" + exception);
			}
		})
	}
	
	function replyRemove(comment_num, board_num){
		$.ajax({
			url : '/board/replyRemove',
			type : 'post',
			
			data : {
				'comment_num' : comment_num,
				'board_num' : board_num
			},
			dataType : 'text',
			
			success : function(data){
				console.log(data);
				$('.comment-list').empty();
				$('.comment-list').append(data);
				
			},
			
			error: function(xhr, status, exception){
				alert("code=" + xhr.status + "message=" +xhr.responseText + "exception =" + exception);
			}
		})
	}
	
	
	
	

</script>

