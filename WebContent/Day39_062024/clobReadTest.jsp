<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<%
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	StringBuffer sb = null;

	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:ORCL";

	try {
		Class.forName(driver);
		conn = DriverManager.getConnection(url, "scott", "tiger");

		pstmt = conn.prepareStatement("SELECT * FROM clobtable WHERE  num=1");
		rs = pstmt.executeQuery();
		if (rs.next()) {
			Reader rd = rs.getCharacterStream("content");
			//문자스트림형태로 content를 가져와 Reader객체에 넣는다.
			sb = new StringBuffer();
			char[] buf = new char[1024];
			//1K
			int readcnt;
			
			while ((readcnt = rd.read(buf, 0, 1024)) != -1) {
				sb.append(buf, 0, readcnt);
			}
		}
		rs.close();
		pstmt.close();
		conn.close();
		out.println(sb.toString());
	} catch (Exception e) {
		e.printStackTrace();
	}
%>
