<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<%@ page import = "vo.Member" %>


<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
<title> 콩순이 컴퓨터 </title>
<link rel="stylesheet" href="css/common.css">
<link rel="stylesheet" href="css/main.css">
<script src="js/jquery.js"></script>
<script src="js/jquery.bxslider.min.js"></script>
<script src="js/isotope.pkgd.min.js"></script>
<script src="js/common.js"></script>
<script src="js/main.js"></script>

</head>
<body>
	
	<!--헤더 영역-->
	<div id="header-wrap">
		<header class="header-inner">
			<h1>
				<a href="#">
				<picture>
								
								<img src="images/common/logo.jpg" width="280px" height="70px">
								
				</picture>
				</a>
			</h1>
			<p class="mobile-menu-open">
				<button>
								<span class="blind">메뉴 열기</span>
								<span></span>
								<span></span>
								<span></span>
				</button>
			</p>
			<div class="mobile-menu-wrap">
				<div class="mobile-menu-scroll">
					
					<ul class="util-menu">
						<li><a href="#">Home</a></li>
						<li><a href="login.jsp">Login</a></li>
						<li><a href="#">관리자 로그인</a></li> <!-- 관리자일경우만 열릴수있게 코딩 -->
					</ul>
					<nav id="gnb">
						<h2 class="blind">메인메뉴</h2>
						<ul>
							<li class="m1">
								<a href="#" >컴퓨터</a>
								<ul>
									<li><a href="#">1</a></li>
									<li><a href="#">2</a></li>
									<li><a href="#">3</a></li>
								</ul>
							</li>
							<li class="m2">
								<a href="#">저장장치</a>
								<ul>
									<li><a href="#">4</a></li>
									<li><a href="#">5</a></li>
									<li><a href="#">6</a></li>
									<li><a href="#">7</a></li>
									<li><a href="#">8</a></li>
								</ul>
							</li>
							<li class="m3">
								<a href="#">주변기기</a>
								<ul>
									<li><a href="#">9</a></li>
									<li><a href="#">10</a></li>
									<li><a href="#">11</a></li>
									<li><a href="#">12</a></li>
									<li><a href="#">13</a></li>
								</ul>
							</li>
							<li class="m4 no-sub">
							`				<a href="boardList.bo">조립문의</a>
							</li>
						</ul>
					</nav>
				</div>
				<p class="mobile-menu-close">
					<button>
						<span class="blind">메뉴닫기</span>
						<span></span>
						<span></span>
					</button>
				</p>
			</div>
		</header>
	</div>
	<!--//헤더 영역-->
	<!--콘테이너 영역-->
	
	<jsp:include page="index.jsp"></jsp:include>
	
</body>
</html>