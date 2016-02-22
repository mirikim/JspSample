<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
	session.setAttribute("name", "Session Test!");
	//속성값 name을 SessionTest!로 설정
%>
<script>
	location.href = "sessionTest.jsp";
</script>