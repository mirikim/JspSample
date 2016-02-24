<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@page import="java.sql.*"%>
<%@page import="javax.sql.*"%>
<%@page import="javax.naming.*"%>
<%
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql = "INSERT INTO student1(num,name)VALUES(12,'홍길동')";
	String sql2 = "SELECT * FROM student1 where num=11";
	try {
		Context init = new InitialContext();
		DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/OracleDB");
		conn = ds.getConnection();
		
		conn.setAutoCommit(false);
		
		
		pstmt = conn.prepareStatement(sql);
		pstmt.executeUpdate();
		pstmt.close();
		//pstmt를 생성해주고 굳이 ptmst를 닫아주지 않아도 가비지컬렉터에 의해서 정리가 되지만 닫아주는게좋다

		pstmt = conn.prepareStatement(sql2);
		rs = pstmt.executeQuery();
		if (!rs.next()) {
			conn.rollback();
			out.println("<h3>데이터 삽입에 문제가 발생하여 롤백하였습니다.</h3>");
		} else {
			conn.commit();
			out.println("<h3>데이터 삽입이 모두 완료되었습니다.</h3>");
		}
		pstmt.close();
		conn.setAutoCommit(true);
		//디비의 동기화는 신경쓸필요가없다 디비에서 자체적으로 처리해줌
		//conn.setAutoCommit(false); 의도적으로 값을 설정해줘야하고 false로 한후에는 true로 해줘야한다.
	} catch (Exception e) {
		out.println("<h3>데이터 삽입에 실패하였습니다.</h3>");
		e.printStackTrace();
	}
%>
