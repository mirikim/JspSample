<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="EUC-KR"%>
<%
   Connection conn = null;
   try {
      Context init = new InitialContext();
      DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/OracleDB");
      conn = ds.getConnection();

      out.println("<h3>연결되었습니다.</h3>");
   } catch (Exception e) {
      out.println("<h3>연결에 실패하였습니다.</h3>");
      e.printStackTrace();
   }
%>