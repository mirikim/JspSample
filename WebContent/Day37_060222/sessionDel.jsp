<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
	session.removeAttribute("name");
	//name �Ӽ��� ����
%>
<script>
	location.href = "sessionTest.jsp";
</script>