<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<%@ page import = "vo.Member" %>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/form.css">
</head>
<body>
<header>
	<ul>
	<li>
		<%
			String id = (String)session.getAttribute("id");
		    String grade = (String)session.getAttribute("grade");
		    Member member = (Member)session.getAttribute("member");
		    if(id == null){
		%>
			<a href = "loginForm.html">로그인</a>
		<%
		    }
		    else{
		%>
			<li>[등급 : <%if(grade!=null&&grade.equals("S")){%>관리자
			<%}else if(grade!=null&&grade.equals("N")) { %>일반<%} %>]<br>
			${id}님 환영합니다.
			<a href = "logout">로그아웃</a>
		<%
		    }
		%>
		</li>
		<li><a href="JoinForm.jsp">회원가입</a></li>
		<li><a href="#">장바구니</a></li>
		<li><a href="#">제품보러가기</a></li>
	</ul>
</header>

<nav>
<ul>
	<li>테스트중</li>
</ul>
</nav>
</body>
</html>