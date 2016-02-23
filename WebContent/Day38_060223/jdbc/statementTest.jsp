<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@page import="java.sql.*"%>
<%@page import="javax.sql.*"%>
<%@page import="javax.naming.*"%>
<%
	/*
	db에 student1 테이블 생성해줘야함
	create table student1(num number, name varchar2(10));
	desc student1;
	
	insert into student1 values(1,'홍길동');
	insert into student1 values(2,'고길동');
	insert into student1 values(3,'김길동');
	insert into student1 values(4,'김길동');
	insert into student1 values(5,'김기문');
	
	select * from student1;
	
	*/
	Connection conn = null;
	String sql = "INSERT INTO student1 (num,name) VALUES(6,'홍길동')";
	try {
		Context init = new InitialContext();
		DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/OracleDB");
		conn = ds.getConnection();
		Statement stmt = conn.createStatement();

		int result = stmt.executeUpdate(sql);
		/*
		executeQuery(String sql) :Select문을 실행할때사용(ResultSet객체반환)
		executeUpdate(String sql) : 삽입,수정,삭제와 관련된 sql문실행에 사용한다.적용된 행수를 반환
		close() : statement객체를 반환할때 사용.
		*/
		if (result != 0) {
			out.println("<h3>레코드가 등록되었습니다</h3>");
		}
	} catch (Exception e) {
		out.println("<h3>레코드 등록에 실패하였습니다.</h3>");
		e.printStackTrace();
	}
%>
