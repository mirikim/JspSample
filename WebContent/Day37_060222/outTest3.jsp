<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Out Test</title>
</head>
<body>
	<h2>Out �׽�Ʈ</h2>
	<table border="1">
		<tr>
			<td>autoFlush ����</td>
			<td><%=out.isAutoFlush()%></td>
		</tr>
		<tr>
			<td>��� ������ ũ��</td>
			<td><%=out.getBufferSize()%>����Ʈ</td>
		</tr>
		<tr>
			<td>��� ������ ���� ��</td>
			<td><%=out.getRemaining()%>����Ʈ</td>
		</tr>
	</table>

</body>
</html>