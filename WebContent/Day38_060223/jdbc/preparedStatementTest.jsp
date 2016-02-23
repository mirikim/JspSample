<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*"%>
<%@page import="javax.sql.*"%>
<%@page import="javax.naming.*"%>
<%
	Connection conn = null;
	String sql = "INSERT INTO student1 (num,name) VALUES(?,'홍길동')";
	try {
		Context init = new InitialContext();
		DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/OracleDB");
		conn = ds.getConnection();
		PreparedStatement stmt = conn.prepareStatement(sql);

		for (int i = 7; i <= 10; i++) {
			stmt.setInt(1, i);
			//테이블의 1번째 컬럼에 i값을 설정한다.
			if (stmt.executeUpdate() != 0) {
				out.println("<h3>" + i + "번 레코드를 등록하였습니다.</h3>");

			}
		}
	} catch (Exception e) {
		out.println("<h3>레코드 등록에 실패하였습니다.</h3>");
		e.printStackTrace();
	}
%>
