<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="/script/script.js"></script>
<link rel="stylesheet" href="/css/common.css">
<link rel="stylesheet" href="/css/style.css">
<script src="bxslider-4-4.2.12/dist/jquery.bxslider.min.js"></script>
<link rel="stylesheet" href="bxslider-4-4.2.12/dist/jquery.bxslider.css">
 <script>
    $(document).ready(function(){
      $("#slide").bxSlider({
        auto:true
      })
    })
  </script>
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
							<a href="index.html"> <img src="images/logo.png" alt="">
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
											<a href="/sub02">브랜드 경쟁력</a>
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
							<a href="/board">커뮤니티</a>
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
											<a href="/board">공지사항</a>
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
		<main>
			<div id="slide">
				<img src="images/slider01.jpg" alt=""> <img
					src="images/slider02.jpg" alt=""> <img
					src="images/slider03.jpg" alt="">
			</div>
		</main>

		<div id="contents">

			<section id="banner" class="container clearfix">

				<div id="ban1">
					<div class="btextcover">
						<a href="sub_html/sub01.html"> <span class="btext1">브랜드소개</span>
							<span class="btitle">Introduce Brand</span> <span class="bbar"></span>
							<span class="btext2">좋은 사람들이 함께하는 편안한 분위기로 사랑 받고 있습니다.</span>
						</a>
					</div>
					<div class="imgcover">
						<a href="sub_html/sub01.html"> <img src="images/bn01.jpg"
							alt="">
						</a>
					</div>

				</div>
				<div id="ban2">
					<div id="ban2-1">
						<ul class="itemcover">
							<li><a href="#"> <span>핫도그</span>
							</a></li>
							<li><a href="#"> <span>커피</span>
							</a></li>
							<li><a href="#"> <span>Beverage</span>
							</a></li>
							<li><a href="#"> <span>Side Menu</span>
							</a></li>
						</ul>
						<div class="btextcover">
							<a href="#"> <span class="btext1">메뉴소개</span> <span
								class="btitle">XOXO <br> Best Menu
							</span> <span class="bbar"></span> <span class="btext2">좋은 사람들이
									함께하는 편안한 분위기로 사랑 받고 있습니다.</span>
							</a>
						</div>
					</div>
					<div id="ban2-2">
						<div class="news">
							<h3>News</h3>
							<span></span> <a href="sub_html/sub03.html">매송휴게소 OPEN 안내</a>
							<p class="graytext">2018-04-13</p>
						</div>
						<span class="dashbar"></span>
						<div class="news">
							<span></span> <a href="#">제19회 애니사운드 페스티벌 초대권 이벤트</a>
							<p>XOXO핫도그앤커피와 함께하는 애니음악 페스티벌!</p>
							<p class="graytext">2017-01-23</p>
						</div>
					</div>
				</div>
				<div id="ban3">
					<div class="stextcover">
						<h2>New Menu</h2>
						<span></span>
						<h3>신메뉴 소개</h3>
						<p>
							본사가 운영하는 노하우와 매뉴얼을 <br> 바탕으로 창업의 꿈을 실현하자!
						</p>
					</div>
					<div class="imgslide">
						<img src="images/bannerslide.png" alt=""> <img
							src="images/bannerslide02.png" alt="">
					</div>
				</div>
				<div id="ban4">
					<div class="btextcover">
						<a href="#"> <span class="btext1">가맹점 문의</span> <span
							class="btitle">XOXO Frachise</span> <span class="bbar"></span> <span
							class="btext2">좋은 사람들이 함께하는 편안한 분위기로 사랑 받고 있습니다.</span>
						</a>
					</div>
					<div class="imgcover">
						<a href="#"> <img src="images/bn01.jpg" alt="">
						</a>
					</div>
				</div>
			</section>
			<section id="intro" class="container">
				<div class="intitle">
					<h3>개설 안내</h3>
					<div class="xxcover">
						<h2>XOXO HOTDOG</h2>
					</div>
					<p>
						편안한 분위기로 전 세계에서 사랑 받고 있는 본사가 운영하는<br>노하우와 매뉴얼을 바탕으로 창업의 꿈을
						실현하자!
					</p>
				</div>
				<ul class="inlist">
					<li><a href="#"> <img src="images/shop01.jpg" alt="">
							<span class="subtitle">가맹문의</span> <span class="subtext">여러분의
								성공적인 가맹점<br> 개설을 약속드립니다.
						</span> <span class="submore">More +</span>
					</a></li>
					<li><a href="#"> <img src="images/shop02.jpg" alt="">
							<span class="subtitle">개설절차</span> <span class="subtext">성공정인
								가맹점 개설을 위해 시작부터 개설완료까지 맞춤개설을 도와드립니다.</span> <span class="submore">More
								+</span>
					</a></li>
					<li><a href="#"> <img src="images/shop03.jpg" alt="">
							<span class="subtitle">개설비용</span> <span class="subtext">소자본투자부터
								다양한 투자<br>비용에 따라 개설하실 수 있습니다.
						</span> <span class="submore">More +</span>
					</a></li>
					<li><a href="#"> <img src="images/shop04.jpg" alt="">
							<span class="subtitle">창업FAQ</span> <span class="subtext">창업과
								관련하여 자주 묻는<br>질문을 모았습니다.
						</span> <span class="submore">More +</span>
					</a></li>
				</ul>
				<a href="#" class="inbtn">View More</a>
			</section>
			<!--      find-->
			<section id="find">
				<div class="container">
					<div class="findbox left">
						<h3>매장찾기</h3>
						<p>전국가맹점을 확인하실 수 있습니다.</p>
						<a href="#" class="fgray">More +</a>
					</div>
					<div class="findbox right">
						<h3>창업문의</h3>
						<h2>Tel. 1522-0727</h2>
						<p class="fgray">대표번호 : 02-2093-2068 / 운영시간 09:00 ~ 18:00</p>

					</div>
				</div>
			</section>
			<section id="bot-menu" class="clearfix">
				<div class="container">
					<dl>
						<dt>브랜드 소개</dt>
						<dd>
							<a href="#">브랜드 소개</a>
						</dd>
						<dd>
							<a href="#">브랜드 경쟁력</a>
						</dd>
						<dd>
							<a href="#">브랜드 컨셉</a>
						</dd>
						<dd>
							<a href="#">BI</a>
						</dd>
						<dd>
							<a href="#">웹 브로셔</a>
						</dd>
						<dd>
							<a href="#">회사소개</a>
						</dd>
					</dl>
					<dl>
						<dt>메뉴</dt>
						<dd>
							<a href="#">핫도그</a>
						</dd>
						<dd>
							<a href="#">커피</a>
						</dd>
						<dd>
							<a href="#">Beverage</a>
						</dd>
						<dd>
							<a href="#">Side menu</a>
						</dd>
					</dl>
					<dl>
						<dt>개설안내</dt>
						<dd>
							<a href="#">가맹문의</a>
						</dd>
						<dd>
							<a href="#">개설절차</a>
						</dd>
						<dd>
							<a href="#">개설비용</a>
						</dd>
						<dd>
							<a href="#">창업FAQ</a>
						</dd>
						<dd>
							<a href="#">인테리어</a>
						</dd>
					</dl>
					<dl>
						<dt>매장정보</dt>
						<dd>
							<a href="#">매장찾기</a>
						</dd>
						<dd>
							<a href="#">특수상권</a>
						</dd>
					</dl>
					<dl>
						<dt>이벤트</dt>
						<dd>
							<a href="#">이벤트</a>
						</dd>
					</dl>
					<dl>
						<dt>커뮤니티</dt>
						<dd>
							<a href="#">소셜 XOXO</a>
						</dd>
						<dd>
							<a href="#">공지사항</a>
						</dd>
						<dd>
							<a href="#">보도자료</a>
						</dd>
						<dd>
							<a href="#">고객만족센터</a>
						</dd>
					</dl>
				</div>
			</section>
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
						<a href="index.html"> <img src="images/footer_logo.png" alt="">
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