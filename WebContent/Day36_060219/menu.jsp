<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<%
	String id = (String) session.getAttribute("id");
%>
<body>
	<%
		if (id == null) {
	%>
	<a href="login.jsp" target="rightFrmae" />로그인
	</a>
	<%
		} else {
	%>
	<%=id%>님 환영합니다.
	<%
		}
	%>

</body>
</html>