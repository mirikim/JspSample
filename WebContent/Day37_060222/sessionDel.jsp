<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
	session.removeAttribute("name");
	//name 속성값 제거
%>
<script>
	location.href = "sessionTest.jsp";
</script>