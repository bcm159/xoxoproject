<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="/script/script.js"></script>
<link rel="stylesheet" href="/css/common.css">
<link rel="stylesheet" href="/css/style.css">
</head>
<body>
<div id="wrap">
    <header>
      <div id="h-top">
        <div class="container">
          <ul class="topnav">
            <li><a href="#">홈으로</a></li>
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
            <a href="#">페이스북</a>
            <a href="#">트위터</a>
            <a href="#">인스타</a>
            <a href="#">블로그</a>
          </div>
        </div>
      </div>
      <div id="h-bot" class="clearfix">
        <div class="container">
          <div id="logo">
            <h1>
              <a href="../index.html">
                <img src="../images/logo.png" alt="">
              </a>
            </h1>
          </div>
          <nav>
            <div class="mainmenu">
              <a href="sub01.html">브랜드 소개</a>
              <div class="submenu">

                <div class="container">
                  <dl>
                    <dt>브랜드 소개</dt>
                    <dd><a href="#">핵심가치</a></dd>
                  </dl>
                  <dl>
                    <dt>브랜드 경쟁력</dt>
                    <dd><a href="#">브랜드 경쟁력</a></dd>
                  </dl>
                  <dl>
                    <dt>브랜드 컨셉</dt>
                    <dd><a href="#">브랜드 컨셉</a></dd>
                  </dl>
                  <dl>
                    <dt>B.I</dt>
                    <dd><a href="#">B.I</a></dd>
                  </dl>
                  <dl>
                    <dt>웹브로셔</dt>
                    <dd><a href="#">웹브로셔</a></dd>
                  </dl>
                  <dl>
                    <dt>회사소개</dt>
                    <dd><a href="#">C.I</a></dd>
                    <dd><a href="#">연혁</a></dd>
                    <dd><a href="#">오시는 길</a></dd>
                  </dl>
                </div>
              </div>
            </div>
            <div class="mainmenu">
              <a href="/hotdog">메뉴</a>
              <div class="submenu">
                <div class="container">
                  <dl>
                    <dt>Hotdog</dt>
                    <dd><a href="/hotdog">HOTDOG</a></dd>
                  </dl>
                  <dl>
                    <dt>Coffee</dt>
                    <dd><a href="/coffee">COFFEE</a></dd>
                  </dl>
                  <dl>
                    <dt>Beverage</dt>
                    <dd><a href="/beverage">SMOOTHIE</a></dd>
                    <dd><a href="/beverage">ADE</a></dd>
                  </dl>
                  <dl>
                    <dt>Side Menu</dt>
                    <dd><a href="/sidemenu">POTATO</a></dd>
                    <dd><a href="/sidemenu">FRIES</a></dd>
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
                    <dd><a href="#">가맹문의</a></dd>
                  </dl>
                  <dl>
                    <dt>개설절차</dt>
                    <dd><a href="#">개설절차</a></dd>
                  </dl>
                  <dl>
                    <dt>개설비용</dt>
                    <dd><a href="#">개설비용</a></dd>
                  </dl>
                  <dl>
                    <dt>창업FAQ</dt>
                    <dd><a href="#">창업FAQ</a></dd>
                  </dl>
                  <dl>
                    <dt>인테리어</dt>
                    <dd><a href="#">인테리어</a></dd>
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
                    <dd><a href="#">매장찾기</a></dd>
                  </dl>
                  <dl>
                    <dt>특수상권</dt>
                    <dd><a href="#">특수상권</a></dd>
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
                    <dd><a href="#">진행중인 이벤트</a></dd>
                  </dl>
                  <dl>
                    <dt>마감된 이벤트</dt>
                    <dd><a href="#">마감된 이벤트</a></dd>
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
                    <dd><a href="#">소셜 XOXO</a></dd>
                  </dl>
                  <dl>
                    <dt>공지사항</dt>
                    <dd><a href="#">공지사항</a></dd>
                  </dl>
                  <dl>
                    <dt>보도자료</dt>
                    <dd><a href="#">보도자료</a></dd>
                  </dl>
                  <dl>
                    <dt>고객만족센터</dt>
                    <dd><a href="#">고객만족센터</a></dd>
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
        <h3>Most Delicious Hotdog</h3>
        <h2>Most Delicious Coffee</h2>
      </div>
    </div>
    <div id="sub-body">
      <div class="body-menu">
        <div class="container clearfix">
          <a href="#">
            <img src="../images/home.jpg" alt="">
          </a>
          <div class="btnnav">
            <button>메뉴</button>
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
            <button>핫도그</button>
            <ul class="btnsub">
              <li><a href="#">Hotdog</a></li>
              <li><a href="#">Coffee</a></li>
              <li><a href="#">Beverage</a></li>
              <li><a href="#">Side Menu</a></li>H
            </ul>
          </div>
        </div>
      </div>
      <div class="body-contents container">
        <div class="bodytitle">
          <h3>Brand Menu</h3>
          <h2>Coffee</h2>
        </div>
        <ul class="body-con-menu-hot clearfix">
          <li><a href="/hotdog">Hotdog</a></li>
          <li><a href="/coffee" class="redbutton">Coffee</a></li>
          <li><a href="/beverage">Beverage</a></li>
          <li><a href="/sidemenu">Side Menu</a></li>
        </ul>
        <div class="body-con-box-hot">
        	<ul>
        		<li>
        			<img src="/images/menu/drink/drink1.jpg" alt="">
        			<h3>아메리카노</h3>
        			<p>AMERICANO</p>
        			<button>구매하기</button>
        		</li>
        		<li>
        			<img src="/images/menu/drink/drink2.jpg" alt="">
        			<h3>카페라떼</h3>
        			<p>CAFE LATTE</p>
        			<button>구매하기</button>
        		</li>
        		<li>
        			<img src="/images/menu/drink/drink3.jpg" alt="">
        			<h3>카페모카</h3>
        			<p>CAFEMOCHA</p>
        			<button>구매하기</button>
        		</li>
        		<li>
        			<img src="/images/menu/drink/drink4.jpg" alt="">
        			<h3>카라멜모카</h3>
        			<p>CARMEL MOCHA</p>
        			<button>구매하기</button>
        		</li>
        		<li>
        			<img src="/images/menu/drink/drink5.jpg" alt="">
        			<h3>카라멜라떼</h3>
        			<p>CARAMEL LATTE</p>
        			<button>구매하기</button>
        		</li>
        		<li>
        			<img src="/images/menu/drink/drink6.jpg" alt="">
        			<h3>카라멜마끼아또</h3>
        			<p>CARAMEL MACCHIATO</p>
        			<button>구매하기</button>
        		</li>
        		<li>
        			<img src="/images/menu/drink/drink7.jpg" alt="">
        			<h3>카푸치노</h3>
        			<p>CAPPUCCINO</p>
        			<button>구매하기</button>
        		</li>
        		<li>
        			<img src="/images/menu/drink/drink8.jpg" alt="">
        			<h3>초코라떼</h3>
        			<p>CHOCOLATE</p>
        			<button>구매하기</button>
        		</li>
        		<li>
        			<img src="/images/menu/drink/drink9.jpg" alt="">
        			<h3>바닐라카페라떼</h3>
        			<p>VANILLA LATTE</p>
        			<button>구매하기</button>
        		</li>
        		<li>
        			<img src="/images/menu/drink/drink10.jpg" alt="">
        			<h3>그린티라떼</h3>
        			<p>GREENTEA LATTE</p>
        			<button>구매하기</button>
        		</li>
        		
        	</ul>
        </div>
      </div>
    </div>

    
    <footer>
      <div class="container">
        <ul id="ftop">
          <li><a href="sub01.html">회사소개</a></li>
          <li><a href="#">가맹문의</a></li>
          <li><a href="#">매장찾기 </a></li>
          <li><a href="#">채용문의</a></li>
          <li><a href="#">개인정보취급방침</a></li>
        </ul>
        <div id="fbot">
          <div id="flogo">
            <a href="../index.html">
              <img src="../images/footer_logo.png" alt="">
            </a>
          </div>
          <address>㈜세컨드찬스(XOXO HOTDOG&amp;COFFEE)<br>대표자 : 서희원 사업자등록번호 : 706-87-00109<br>주소 : 서울특별시 강서구 양천로 583 우림블루나인 비즈니스센터 A동 1510,1511호<br> 대표번호 : 02-2093-2068 팩스번호 : 02-2093-2069<br>Copyright © SECOND CHANCE CORP. All rights reserved.</address>
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