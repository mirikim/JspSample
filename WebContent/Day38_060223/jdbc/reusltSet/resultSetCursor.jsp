<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*"%>
<%@page import="javax.sql.*"%>
<%@page import="javax.naming.*"%>
<%
	Connection conn = null;
	String sql = "SELECT * FROM student1";
	try {
		Context init = new InitialContext();
		DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/OracleDB");
		conn = ds.getConnection();
		PreparedStatement pstmt = conn.prepareStatement(sql, ResultSet.TYPE_SCROLL_SENSITIVE,
				ResultSet.CONCUR_UPDATABLE);
		//TYPE_SCROLL_SENSITIVE : 커서이동을 자유롭게 하고 업데이트 내용을 반영
		//CONCUR_UPDATABLE : 데이터 변경이 가능하도록 한다.

		ResultSet rs = pstmt.executeQuery();
		rs.last();
		//마지막 레코드가 존재하는 행으로 이동
		out.println(rs.getInt(1) + "," + rs.getString(2) + "<br>");
		rs.first();
		//처음 레코드가 존재하는 행으로 이동
		out.println(rs.getInt(1) + "," + rs.getString(2) + "<br>");
		rs.absolute(3);
		//지정한 위치(3)로 커서를 이동
		out.println(rs.getInt(1) + "," + rs.getString(2) + "<br>");
	} catch (Exception e) {
		out.println("<h3>데이터 가져오기에 실패하였습니다.</h3>");
		e.printStackTrace();
	}
%>