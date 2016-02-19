<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.util.Calendar"%>
<%
	Calendar c = Calendar.getInstance();
	int hour = c.get(Calendar.HOUR_OF_DAY);
	int minute = c.get(Calendar.MINUTE);
	int second = c.get(Calendar.SECOND);
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Scriptlet Test2</title>
</head>
<body>
	<h1>
		현재시간
		<%=hour%>시
		<%=minute%>분<%=second%>초
	</h1>
	<%
		if (hour >= 12) {
	%>
	<h2>오후입니다.</h2>
	<%
		} else {
	%>
	<h2>오전입니다.</h2>
	<%
		}
	%>

</body>
</html>