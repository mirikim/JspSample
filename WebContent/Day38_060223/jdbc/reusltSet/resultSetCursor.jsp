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
		//TYPE_SCROLL_SENSITIVE : Ŀ���̵��� �����Ӱ� �ϰ� ������Ʈ ������ �ݿ�
		//CONCUR_UPDATABLE : ������ ������ �����ϵ��� �Ѵ�.

		ResultSet rs = pstmt.executeQuery();
		rs.last();
		//������ ���ڵ尡 �����ϴ� ������ �̵�
		out.println(rs.getInt(1) + "," + rs.getString(2) + "<br>");
		rs.first();
		//ó�� ���ڵ尡 �����ϴ� ������ �̵�
		out.println(rs.getInt(1) + "," + rs.getString(2) + "<br>");
		rs.absolute(3);
		//������ ��ġ(3)�� Ŀ���� �̵�
		out.println(rs.getInt(1) + "," + rs.getString(2) + "<br>");
	} catch (Exception e) {
		out.println("<h3>������ �������⿡ �����Ͽ����ϴ�.</h3>");
		e.printStackTrace();
	}
%>