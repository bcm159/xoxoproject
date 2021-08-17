<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
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

	<div id="wrap">
		<header>
			<div id="h-top">
				<div class="container">
					<ul class="topnav">
						<li><a href="../index.html">홈으로</a></li>
						<li><a href="#">즐겨찾기</a></li>
						<li><a href="#">매장찾기</a></li>
						<li><a href="#">가맹문의</a></li>
						<li><a href="#">이메일문의</a></li>
						<li><a href="sub05_login.html">로그인</a></li>
					</ul>
					<div class="snscover">
						<a href="#">페이스북</a> <a href="#">트위터</a> <a href="#">인스타</a> <a
							href="#">블로그</a>
					</div>
				</div>
			</div>
			<div id="h-bot" class="clearfix">
				<div class="container">
					<div id="logo">
						<h1>
							<a href="../index.html"> <img src="../images/logo.png" alt="">
							</a>
						</h1>
					</div>
					<nav>
						<div class="mainmenu">
							<a href="#">브랜드 소개</a>
							<div class="submenu">
								<div class="container">
									<dl>
										<dt>브랜드 소개</dt>
										<dd>
											<a href="#">핵심가치</a>
										</dd>
									</dl>
									<dl>
										<dt>브랜드 경쟁력</dt>
										<dd>
											<a href="#">브랜드 경쟁력</a>
										</dd>
									</dl>
									<dl>
										<dt>브랜드 컨셉</dt>
										<dd>
											<a href="#">브랜드 컨셉</a>
										</dd>
									</dl>
									<dl>
										<dt>B.I</dt>
										<dd>
											<a href="#">B.I</a>
										</dd>
									</dl>
									<dl>
										<dt>웹브로셔</dt>
										<dd>
											<a href="#">웹브로셔</a>
										</dd>
									</dl>
									<dl>
										<dt>회사소개</dt>
										<dd>
											<a href="#">C.I</a>
										</dd>
										<dd>
											<a href="#">연혁</a>
										</dd>
										<dd>
											<a href="#">오시는 길</a>
										</dd>
									</dl>
								</div>
							</div>
						</div>
						<div class="mainmenu">
							<a href="#">메뉴</a>
							<div class="submenu">
								<div class="container">
									<dl>
										<dt>Hotdog</dt>
										<dd>
											<a href="#">HOTDOG</a>
										</dd>
									</dl>
									<dl>
										<dt>Coffee</dt>
										<dd>
											<a href="#">COFFEE</a>
										</dd>
									</dl>
									<dl>
										<dt>Beverage</dt>
										<dd>
											<a href="#">SMOOTHIE</a>
										</dd>
										<dd>
											<a href="#">ADE</a>
										</dd>
									</dl>
									<dl>
										<dt>Side Menu</dt>
										<dd>
											<a href="#">POTATO</a>
										</dd>
										<dd>
											<a href="#">FRIES</a>
										</dd>
									</dl>
								</div>
							</div>
						</div>
						<div class="mainmenu">
							<a href="#">개설안내</a>
							<div class="submenu">
								<div class="container">
									<dl>
										<dt>가맹문의</dt>
										<dd>
											<a href="#">가맹문의</a>
										</dd>
									</dl>
									<dl>
										<dt>개설절차</dt>
										<dd>
											<a href="#">개설절차</a>
										</dd>
									</dl>
									<dl>
										<dt>개설비용</dt>
										<dd>
											<a href="#">개설비용</a>
										</dd>
									</dl>
									<dl>
										<dt>창업FAQ</dt>
										<dd>
											<a href="#">창업FAQ</a>
										</dd>
									</dl>
									<dl>
										<dt>인테리어</dt>
										<dd>
											<a href="#">인테리어</a>
										</dd>
									</dl>
								</div>
							</div>
						</div>
						<div class="mainmenu">
							<a href="#">매장정보</a>
							<div class="submenu">
								<div class="container">
									<dl>
										<dt>매장찾기</dt>
										<dd>
											<a href="#">매장찾기</a>
										</dd>
									</dl>
									<dl>
										<dt>특수상권</dt>
										<dd>
											<a href="#">특수상권</a>
										</dd>
									</dl>
								</div>
							</div>
						</div>
						<div class="mainmenu">
							<a href="#">이벤트</a>
							<div class="submenu">
								<div class="container">
									<dl>
										<dt>진행중인 이벤트</dt>
										<dd>
											<a href="#">진행중인 이벤트</a>
										</dd>
									</dl>
									<dl>
										<dt>마감된 이벤트</dt>
										<dd>
											<a href="#">마감된 이벤트</a>
										</dd>
									</dl>
								</div>
							</div>
						</div>
						<div class="mainmenu">
							<a href="#">커뮤니티</a>
							<div class="submenu">
								<div class="container">
									<dl>
										<dt>소셜 XOXO</dt>
										<dd>
											<a href="#">소셜 XOXO</a>
										</dd>
									</dl>
									<dl>
										<dt>공지사항</dt>
										<dd>
											<a href="#">공지사항</a>
										</dd>
									</dl>
									<dl>
										<dt>보도자료</dt>
										<dd>
											<a href="#">보도자료</a>
										</dd>
									</dl>
									<dl>
										<dt>고객만족센터</dt>
										<dd>
											<a href="#">고객만족센터</a>
										</dd>
									</dl>
								</div>
							</div>
						</div>
					</nav>
				</div>
			</div>
		</header>

		<div id="sub-banner">
			<div class="container">
				<h3>COME IN &amp;TAST</h3>
				<h2>
					먹는 <b>즐거움</b>맛보는<b>행복!</b>
				</h2>
			</div>
		</div>
		<div id="sub-body">
			<div class="body-menu">
				<div class="container clearfix">
					<a href="../index.html"> <img src="../images/home.jpg" alt="">
					</a>
					<div class="btnnav">
						<button>커뮤니티</button>
						<ul class="btnsub">
							<li><a href="#">브랜드 소개</a></li>
							<li><a href="#">메뉴</a></li>
							<li><a href="#">개설안내</a></li>
							<li><a href="#">매장정보</a></li>
							<li><a href="#">이벤트</a></li>
							<li><a href="#">커뮤니티</a></li>
						</ul>
					</div>
					<div class="btnnav">
						<button>공지사항</button>
						<ul class="btnsub">
							<li><a href="#">소셜 XOXO</a></li>
							<li><a href="#">공지사항</a></li>
							<li><a href="#">보도자료</a></li>
							<li><a href="#">고객만족센터</a></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="body-contents container">
				<div class="bodytitle">
					<h3>Community</h3>
					<h2>공지사항</h2>
				</div>
				<ul class="body-con-menu item4 clearfix">
					<li><a href="#">소셜 XOXO</a></li>
					<li><a href="#" class="redbutton">공지사항</a></li>
					<li><a href="#">보도자료</a></li>
					<li><a href="#">고객만족센터</a></li>
				</ul>
				<div class="body-table">

					<p class="board-views">조회수 : ${board.board_read }</p>
					<table>
						<tbody>
							<tr>
								<th>제목</th>
								<td>${board.board_sub }</td>
							</tr>
							<tr>
								<th>작성자</th>
								<td>${board.board_id }</td>
							</tr>
							<tr>
								<th>작성일</th>
								<td>${board.board_date }</td>

							</tr>
						</tbody>
					</table>
					<p class="text-body">${board.board_text }</p>


					
					<div class="comment-box">
						<form action="comment" method="post" onsubmit="comment__submitForm(this);">
							<input type="text" class="comment-input" name="cm_text"> 
							<input type="hidden" name="board_num" value="${board.board_num }">
							<button type="button" class="create-comment-b1">댓글</button>
						</form>
					</div>
					<div class="comment-message">
                          
                     </div>
					<!--  ajax 댓글-->
					 
                    

				</div>

				<div class="button-box">
					<li><button class="create-btn-b1"
							onclick="location.href='/board'">목록</button></li>
					<li>
						<form action="update" method="post">
							<input type="hidden" name="num" value="${board.board_num }">
							<button class="create-btn-b1"
								onclick="location.href='/board/update'">수정</button>
						</form>
					</li>
					<li>
						<form action="delete" method="post">
							<input type="hidden" name="num" value="${board.board_num }">
							<button class="create-btn-b1">삭제</button>
						</form>
					</li>
				</div>
			</div>
		</div>
	</div>


	<footer>
		<div class="container">
			<ul id="ftop">
				<li><a href="#">회사소개</a></li>
				<li><a href="#">가맹문의</a></li>
				<li><a href="#">매장찾기 </a></li>
				<li><a href="#">채용문의</a></li>
				<li><a href="#">개인정보취급방침</a></li>
			</ul>
			<div id="fbot">
				<div id="flogo">
					<a href="../index.html"> <img src="../images/footer_logo.png"
						alt="">
					</a>
				</div>
				<address>
					㈜세컨드찬스(XOXO HOTDOG&amp;COFFEE)<br>대표자 : 서희원 사업자등록번호 :
					706-87-00109<br>주소 : 서울특별시 강서구 양천로 583 우림블루나인 비즈니스센터 A동
					1510,1511호<br> 대표번호 : 02-2093-2068 팩스번호 : 02-2093-2069<br>Copyright
					© SECOND CHANCE CORP. All rights reserved.
				</address>
				<div class="selectcover">
					<select name="" id="">
						<option value="">Family Site</option>
						<option value="">Family Site</option>
						<option value="">Family Site</option>
						<option value="">Family Site</option>
					</select>
				</div>
			</div>
		</div>
	</footer>

<script>
						
$(".comment-input").focusin();

$(document).on('click', '.create-comment-b1', function () {
	var text = $(".comment-input").val();
	   $.ajax({
	    	type :"post",
	        url : "/comment",
	        dataType: 'json',
	        data : {idx: text},
	        success :function(data){
	        	alert(text);
	        }
	    })
});





    
   
</script>
</body>
</html>