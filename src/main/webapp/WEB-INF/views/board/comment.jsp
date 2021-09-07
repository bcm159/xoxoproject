
<c:forEach items="${comment}" var="item" varStatus="status">
	<span id="comment_writer">${item.comment_writer }</span>
    <span id="comment_text">${item.comment_text }</span>
    
    <button class="comment-button">수정</button>
    <button class="comment-button">삭제</button>
</c:forEach>


