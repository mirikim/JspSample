<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Attribute Test</title>
</head>
<body>
	<h2>영역과 속성 테스트</h2>
	<%
		request.setCharacterEncoding("euc-kr");
		String email = request.getParameter("email");
		String address = request.getParameter("address");
		String tel = request.getParameter("tel");
		session.setAttribute("email", email);
		session.setAttribute("address", address);
		session.setAttribute("tel", tel);
		//session에 email, address,tel의 값을 속성에 넣는다.
		String name = (String) application.getAttribute("name");
		//applcation은 웹어플리케이션이 실행되고 있는 동안 유효하므로 속성값 name을 얻어올 수 있다.
	%>
	<h3><%=name%>
		님의 정보가 모두 저장되었습니다.
	</h3>
	<a href="attributeTest3.jsp">확인하러 가기</a>
</body>
</html>