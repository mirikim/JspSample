<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
	session.setMaxInactiveInterval(10);
	//Ŭ���̾�Ʈ�� ��û�� ������ ������ ������ �ð��� 10�ʷ� ����
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Session Test</title>
</head>
<body>
	<h2>���� �׽�Ʈ</h2>
	isNew():<%=session.isNew()%><br>
	<%--���ο� �����̸� true���� ���� ������ �����ǰ� ������ false���� --%>
	�����ð�:<%=session.getCreationTime()%><br>
	<%-- ������ ������ �ð��� ���Ѵ� 1970��1��1�� 0��0��0�� ���ĺ��� =>epoch  --%>
	���� ���� �ð�:<%=session.getLastAccessedTime()%><br>
	<%--�� �������� ���� �������� ���ǿ� �����ѽð� --%>
	����ID:<%=session.getId()%><br>
	<%--���� id --%>
</body>
</html>