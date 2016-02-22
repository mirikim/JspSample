<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Application Test</title>
</head>
<body>
	<h2>application 테스트</h2>
	<table border="1">

		<tr>
			<td>JSP 버전</td>
			<td><%=application.getMajorVersion()%>,
			<%-- 서버가 지원하는 서블릿규약의 메이저 버전을 리턴. 버전의 정수부분을 리턴 --%>
			 <%=application.getMinorVersion()%></td>
			 <%-- 서버가 지원하는 서블릿 규약ㅢ 마이너 버전을 리턴한다. 버전의 소수 부분리턴--%>
		</tr>
		<tr>
			<td>컨테이너 정보</td>
			<td><%=application.getServerInfo()%></td>
			<%-- 서블릿/jsp 컨테이너 이름과 버전을 문자열로 리턴 --%>
		</tr>
		<tr>
			<td>웹 어플리케이션의 실제 파일시스템 경로</td>
			<td><%=application.getRealPath("/")%></td>
			<%-- 웹 어플리케이션 내에서 지정한 경로에 해당하는 자원의 시스템상에서의 자원경로를 리턴 --%>
		</tr>
	</table>
</body>
</html>