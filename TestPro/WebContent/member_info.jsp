<%@page import="net.member.db.MemberBean"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"%>
<%MemberBean member=(MemberBean)request.getAttribute("member"); %>
<html>
<head><title>회원관리 시스템 관리자 모드(회원 정보 보기)</title></head>
<body>

<table boarder=1>
    <tr align=center> <td>아이디 :</td> <td><%=member.getMEMBER_ID() %></td> </tr>
    <tr align=center> <td>비밀번호 :</td><td><%=member.getMEMBER_PW() %></td> </tr>
    <tr align=center> <td>이름 :</td><td><%=member.getMEMBER_NAME() %></td> </tr>
    <tr align=center> <td>나이 :</td><td><%=member.getMEMBER_AGE() %></td> </tr>
    <tr align=center> <td>성별 :</td><td><%=member.getMEMBER_GENDER() %></td> </tr>
    <tr align=center> <td>이메일 주소 :</td><td><%=member.getMEMBER_EMAIL() %></td> </tr>
    <tr align=center> <td colspan=2><a href="MemberListAction.me">리스트로 돌아가기</a></td> </tr>    
</table>
</body>
</html>