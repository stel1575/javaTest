<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%session.setAttribute("MEMBER_ID", request.getParameter("MEMBER_PW")); %>    <!-- //�Ķ���͸� �޾Ƽ� ���ǰ��� �����Ѵ�. -->
<%session.setAttribute("MEMBER_PW", request.getParameter("MEMBER_PW")); %>
<html>
<head>
<title>Session Login</title>
</head>
<body>
    <h3>�α��� �Ǿ����ϴ�.</h3>
    <h3>Login ID : <%=(String)session.getAttribute("MEMBER_ID") %></h3>    <!-- // �̿Ͱ��� �������� �����Ǵµ���  -->
    <h3>Login PASSWORD : <%=(String)session.getAttribute("MEMBER_PW") %></h3>  <!-- //���ǰ����� ��� �����ȴ�. -->
    <a href="sessionLogout.jsp">�α׾ƿ�</a>
</body>
</html>