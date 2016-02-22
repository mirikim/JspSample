<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
	session.setMaxInactiveInterval(10);
	//클라이언트의 요청이 없더라도 세션을 유지할 시간을 10초로 설정
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Session Test</title>
</head>
<body>
	<h2>세션 테스트</h2>
	isNew():<%=session.isNew()%><br>
	<%--새로운 세션이면 true리턴 기존 세션이 유지되고 있으면 false리턴 --%>
	생성시간:<%=session.getCreationTime()%><br>
	<%-- 세션이 생성된 시간을 구한다 1970년1월1일 0시0분0초 이후부터 =>epoch  --%>
	최종 접속 시간:<%=session.getLastAccessedTime()%><br>
	<%--웹 브라우저가 가장 마지막에 세션에 접근한시간 --%>
	세션ID:<%=session.getId()%><br>
	<%--세션 id --%>
</body>
</html>