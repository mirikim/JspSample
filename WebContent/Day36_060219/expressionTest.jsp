<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%!public int sum() {
		int total = 0;
		for (int i = 1; i <= 100; i++) {
			total += i;
		}
		return total;
	}%>
<%
	String str = "1���� 100������ ��";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Expression Test</title>
</head>
<body>
	<h2><%=str%>�� <b><%=sum()%></b>�Դϴ�.
	</h2>
	<br>
	<h2><%=str%>�� 3�� ���ϸ� <b><%=sum() * 3%></b>�� �˴ϴ�.
	</h2>
	<br>
	<h2><%=str%>�� 1000���� ������ <b><%=sum() / 1000.%></b>���˴ϴ�.
	</h2>
</body>
</html>