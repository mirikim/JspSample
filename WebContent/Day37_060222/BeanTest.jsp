<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<jsp:useBean id="beantest" class="Day37_060222.BeanTest" scope="page"></jsp:useBean>
<%-- <jsp:setProperty name="beantest" property="name" value="BeanTest!"/> --%>
<%-- <jsp:setProperty name="beantest" property="name" param="name"/> --%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>JavaBeen Test</title>
</head>
<body>
	<b>자바빈 사용 예제</b>
	<h3><%=beantest.getName()%></h3>
	<%--<h3><jsp:getProperty name="beantest" property="name"/></h3>	 --%>
</body>
</html>