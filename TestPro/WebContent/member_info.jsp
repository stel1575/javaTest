<%@page import="net.member.db.MemberBean"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"%>
<%MemberBean member=(MemberBean)request.getAttribute("member"); %>
<html>
<head><title>ȸ������ �ý��� ������ ���(ȸ�� ���� ����)</title></head>
<body>

<table boarder=1>
    <tr align=center> <td>���̵� :</td> <td><%=member.getMEMBER_ID() %></td> </tr>
    <tr align=center> <td>��й�ȣ :</td><td><%=member.getMEMBER_PW() %></td> </tr>
    <tr align=center> <td>�̸� :</td><td><%=member.getMEMBER_NAME() %></td> </tr>
    <tr align=center> <td>���� :</td><td><%=member.getMEMBER_AGE() %></td> </tr>
    <tr align=center> <td>���� :</td><td><%=member.getMEMBER_GENDER() %></td> </tr>
    <tr align=center> <td>�̸��� �ּ� :</td><td><%=member.getMEMBER_EMAIL() %></td> </tr>
    <tr align=center> <td colspan=2><a href="MemberListAction.me">����Ʈ�� ���ư���</a></td> </tr>    
</table>
</body>
</html>