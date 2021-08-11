<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="/script/script.js"></script>
<link rel="stylesheet" href="/css/common.css">
<link rel="stylesheet" href="/css/style.css">
<!--   fontawesome-->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />

<title>Board</title>
</head>
<body>
	<div id="wrap">
		<header>
			<div id="h-top">
				<div class="container">
					<ul class="topnav">
						<li><a href="/">홈으로</a></li>
						<li><a href="#">즐겨찾기</a></li>
						<li><a href="#">매장찾기</a></li>
						<li><a href="#">가맹문의</a></li>
						<li><a href="#">이메일문의</a></li>
						<sec:authorize access="isAnonymous()">
							<li><a href="/login">로그인</a></li>
						</sec:authorize>
						<sec:authorize access="isAuthenticated()">
			               <sec:authentication property="principal" var="principal"/>
			                <li><a href="/logout" class="logout">로그아웃</a></li>
			            </sec:authorize>
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
							<a href="/"> <img src="../images/logo.png" alt="">
							</a>
						</h1>
					</div>
					<nav>
						<div class="mainmenu">
							<a href="/sub01">브랜드 소개</a>
							<div class="submenu">
								<div class="container">
									<dl>
										<dt>브랜드 소개</dt>
										<dd>
											<a href="/sub01">핵심가치</a>
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
							<a href="/menu">메뉴</a>
							<div class="submenu">
								<div class="container">
									<dl>
										<dt>Hotdog</dt>
										<dd>
											<a href="/menu">HOTDOG</a>
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
				<div class="body-con-box">
					<div class="body-con-title">
						<p>
							· Total : <b>11</b>건 <b>[1/2]</b>페이지
						</p>
						<div class="body-con-title-search">
							<select name="" id="">
								<option value="">전체</option>
								<option value="">제목</option>
								<option value="">작성자</option>
								<option value="">내용</option>
							</select> <input type="text"> <i class="fas fa-search"></i>
						</div>
					</div>
					<div class="body-table">
						<table>
							<thead>
								<tr>
									<th>번호</th>
									<th>제목</th>
									<th>날짜</th>
									<th>조회</th>
								</tr>
							</thead>
							<tbody>
								<tr class="tdcolor">
									<td>[공지]</td>
									<td>매송휴게소 OPEN 안내</td>
									<td>2018-04-13</td>
									<td>107</td>
								</tr>
								<tr class="tdcolor">
									<td>[공지]</td>
									<td>XOXO 오리지널 콘덕 출시!</td>
									<td>2018-02-28</td>
									<td>134</td>
								</tr>
								<tr class="tdcolor">
									<td>[공지]</td>
									<td>XOXO 핫도그앤커피, 고속도로 휴게소 출점 본격 시동</td>
									<td>2017-12-12</td>
									<td>149</td>
								</tr>
								<tr class="tdcolor">
									<td>[공지]</td>
									<td>XOXO 핫도그앤커피 '2017 스마트 디바이스쇼' 참가!</td>
									<td>2017-08-17</td>
									<td>151</td>
								</tr>
								<tr class="tdcolor">
									<td>[공지]</td>
									<td>2017 지산 밸리록 뮤직앤드 아츠 페스티벌 엑소엑소 핫도그 참가!</td>
									<td>2017-08-01</td>
									<td>159</td>
								</tr>
								<tr>
									<td>6</td>
									<td>XOXO핫도그앤커피 2018 설 연휴 배송 안내</td>
									<td>2018-02-12</td>
									<td>339</td>
								</tr>
								<tr>
									<td>5</td>
									<td>2017추석연휴기간 물류배송 안내</td>
									<td>2017-09-22</td>
									<td>225</td>
								</tr>
								<tr>
									<td>4</td>
									<td>★엑소엑소 핫도그앤커피 1주년 기념 이벤트!★</td>
									<td>2017-04-27</td>
									<td>185</td>
								</tr>
								<tr>
									<td>3</td>
									<td>2017정유년 새해 福 많이 받으십시오!</td>
									<td>2017-01-26</td>
									<td>165</td>
								</tr>
								<tr>
									<td>2</td>
									<td>엑소엑소 핫도그앤커피 포테이토 신 메뉴 출시!</td>
									<td>2016-12-05</td>
									<td>360</td>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="body-btn">
						<button>&#60;&#60;</button>
						<button>&#60;</button>
						<button>1</button>
						<button>2</button>
						<button>&#62;</button>
						<button>&#62;&#62;</button>
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
	</div>
</body>
</html>