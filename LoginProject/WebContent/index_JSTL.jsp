<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<c:choose>
		<c:when test"${id==null }">
		</c:when>
		<c:otherwise>
		[등급 : ${grade eq'S' ? '관리자' : '일반' }]
		[등급 : ${grade. }]
	
<sql:setDataSource var="conn" driver="oracle.jdbc.driver.OracleDriver"
				url="jdbc:oracle:thin:@localhost:1521:XE" user="java"
				password="java" />
		</c:otherwise>
	</c:choose>


</body>
</html>