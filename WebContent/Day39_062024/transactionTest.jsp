<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@page import="java.sql.*"%>
<%@page import="javax.sql.*"%>
<%@page import="javax.naming.*"%>
<%
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql = "INSERT INTO student1(num,name)VALUES(12,'ȫ�浿')";
	String sql2 = "SELECT * FROM student1 where num=11";
	try {
		Context init = new InitialContext();
		DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/OracleDB");
		conn = ds.getConnection();
		
		conn.setAutoCommit(false);
		
		
		pstmt = conn.prepareStatement(sql);
		pstmt.executeUpdate();
		pstmt.close();
		//pstmt�� �������ְ� ���� ptmst�� �ݾ����� �ʾƵ� �������÷��Ϳ� ���ؼ� ������ ������ �ݾ��ִ°�����

		pstmt = conn.prepareStatement(sql2);
		rs = pstmt.executeQuery();
		if (!rs.next()) {
			conn.rollback();
			out.println("<h3>������ ���Կ� ������ �߻��Ͽ� �ѹ��Ͽ����ϴ�.</h3>");
		} else {
			conn.commit();
			out.println("<h3>������ ������ ��� �Ϸ�Ǿ����ϴ�.</h3>");
		}
		pstmt.close();
		conn.setAutoCommit(true);
		//����� ����ȭ�� �Ű澵�ʿ䰡���� ��񿡼� ��ü������ ó������
		//conn.setAutoCommit(false); �ǵ������� ���� ����������ϰ� false�� ���Ŀ��� true�� ������Ѵ�.
	} catch (Exception e) {
		out.println("<h3>������ ���Կ� �����Ͽ����ϴ�.</h3>");
		e.printStackTrace();
	}
%>
