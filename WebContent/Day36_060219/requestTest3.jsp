<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Request Test3</title>
</head>
<body>
	<h1>쿠키, URL/URI, 요청방식에 관련된 정보 예제</h1>
	<table border="1">
		<tr>
			<td>쿠키정보</td>
			<%
				Cookie[] cookie = request.getCookies();
				if (cookie == null) {
			%>
			<td>쿠키가 존재하지 않습니다.</td>
			<%
				} else {
					for (int i = 0; i < cookie.length; i++) {
			%>
			<td><%=cookie[i].getName()%>(<%=cookie[i].getValue()%>)&nbsp;&nbsp;
			</td>
			<%
				}
				}
			%>
		</tr>
		<tr>
			<td>서버 도메인명</td>
			<td><%=request.getServerName()%></td>
		<tr>
			<td>서버 포트번호</td>
			<td><%=request.getServerPort()%></td>
		<tr>
			<td>요청 URL</td>
			<td><%=request.getRequestURL()%></td>
		<tr>
			<td>요청 URI</td>
			<td><%=request.getRequestURI()%></td>
		<tr>
			<td>요청 쿼리</td>
			<td><%=request.getQueryString()%></td>
		<tr>
			<td>클라이언트 호스트명</td>
			<td><%=request.getRemoteHost()%></td>
		<tr>
			<td>클라이언트 IP주소</td>
			<td><%=request.getRemoteAddr()%></td>
		<tr>
			<td>프로토콜</td>
			<td><%=request.getProtocol()%></td>
		<tr>
			<td>요청방식</td>
			<td><%=request.getMethod()%></td>
		<tr>
			<td>컨텍스트 경로</td>
			<td><%=request.getContextPath()%></td>
	</table>
</body>
</html>