<%@ page language="java" contentType="text/html; charset=EUC-KR"%>
<%
request.setCharacterEncoding("euc-kr");
String name=request.getParameter("name");
String subject=request.getParameter("subject");
String fileName1=request.getParameter("fileName1");
String fileName2=request.getParameter("fileName2");
//아래 두줄 추가
String origfileName1 = request.getParameter("origfileName1");
String origfileName2 = request.getParameter("origfileName2");
%>
<html>
<head>
<title>파일 업로드 확인 및 다운로드</title>
</head>
<body>
   올린 사람 :
   <%=name %><br> 제목 :
   <%=subject %><br>
   <!-- 파일명 링크거는 부분 수정함 -->
   파일명1:
   <a href="file_down.jsp?file_name=<%=fileName1 %>"><%=origfileName1 %></a>
   <br> 파일명2:
   <a href="file_down.jsp?file_name=<%=fileName2 %>"><%=origfileName2 %></a>
   <p>
</body>
</html>