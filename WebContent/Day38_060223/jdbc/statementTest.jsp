<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@page import="java.sql.*"%>
<%@page import="javax.sql.*"%>
<%@page import="javax.naming.*"%>
<%
	/*
	db�� student1 ���̺� �����������
	create table student1(num number, name varchar2(10));
	desc student1;
	
	insert into student1 values(1,'ȫ�浿');
	insert into student1 values(2,'��浿');
	insert into student1 values(3,'��浿');
	insert into student1 values(4,'��浿');
	insert into student1 values(5,'��⹮');
	
	select * from student1;
	
	*/
	Connection conn = null;
	String sql = "INSERT INTO student1 (num,name) VALUES(6,'ȫ�浿')";
	try {
		Context init = new InitialContext();
		DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/OracleDB");
		conn = ds.getConnection();
		Statement stmt = conn.createStatement();

		int result = stmt.executeUpdate(sql);
		/*
		executeQuery(String sql) :Select���� �����Ҷ����(ResultSet��ü��ȯ)
		executeUpdate(String sql) : ����,����,������ ���õ� sql�����࿡ ����Ѵ�.����� ����� ��ȯ
		close() : statement��ü�� ��ȯ�Ҷ� ���.
		*/
		if (result != 0) {
			out.println("<h3>���ڵ尡 ��ϵǾ����ϴ�</h3>");
		}
	} catch (Exception e) {
		out.println("<h3>���ڵ� ��Ͽ� �����Ͽ����ϴ�.</h3>");
		e.printStackTrace();
	}
%>
