<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Application Test</title>
</head>
<body>
	<h2>application �׽�Ʈ</h2>
	<table border="1">

		<tr>
			<td>JSP ����</td>
			<td><%=application.getMajorVersion()%>,
			<%-- ������ �����ϴ� �����Ծ��� ������ ������ ����. ������ �����κ��� ���� --%>
			 <%=application.getMinorVersion()%></td>
			 <%-- ������ �����ϴ� ���� �Ծ�� ���̳� ������ �����Ѵ�. ������ �Ҽ� �κи���--%>
		</tr>
		<tr>
			<td>�����̳� ����</td>
			<td><%=application.getServerInfo()%></td>
			<%-- ����/jsp �����̳� �̸��� ������ ���ڿ��� ���� --%>
		</tr>
		<tr>
			<td>�� ���ø����̼��� ���� ���Ͻý��� ���</td>
			<td><%=application.getRealPath("/")%></td>
			<%-- �� ���ø����̼� ������ ������ ��ο� �ش��ϴ� �ڿ��� �ý��ۻ󿡼��� �ڿ���θ� ���� --%>
		</tr>
	</table>
</body>
</html>