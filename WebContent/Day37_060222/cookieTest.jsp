<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
	Cookie cookie = new Cookie("name", "hongkildong");
	cookie.setMaxAge(600);
	response.addCookie(cookie);
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Cookie Test</title>
</head>
<body>
	<h2><%=cookie.getName()%></h2>
	<h2><%=cookie.getValue()%></h2>
	<h2><%=cookie.getMaxAge()%></h2>
	<a href="cookieTest2.jsp">��Ű �� �ҷ�����</a>
</body>
</html>