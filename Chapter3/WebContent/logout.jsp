<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<% 
session.invalidate();
out.println("<script>");
out.println("alert('로그아웃되었습니다')");
out.println("location.href='template.jsp'");
out.println("</script>");
%>
</body>
</html>