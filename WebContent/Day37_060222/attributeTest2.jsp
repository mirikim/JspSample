<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Attribute Test</title>
</head>
<body>
	<h2>������ �Ӽ� �׽�Ʈ</h2>
	<%
		request.setCharacterEncoding("euc-kr");
		String email = request.getParameter("email");
		String address = request.getParameter("address");
		String tel = request.getParameter("tel");
		session.setAttribute("email", email);
		session.setAttribute("address", address);
		session.setAttribute("tel", tel);
		//session�� email, address,tel�� ���� �Ӽ��� �ִ´�.
		String name = (String) application.getAttribute("name");
		//applcation�� �����ø����̼��� ����ǰ� �ִ� ���� ��ȿ�ϹǷ� �Ӽ��� name�� ���� �� �ִ�.
	%>
	<h3><%=name%>
		���� ������ ��� ����Ǿ����ϴ�.
	</h3>
	<a href="attributeTest3.jsp">Ȯ���Ϸ� ����</a>
</body>
</html>