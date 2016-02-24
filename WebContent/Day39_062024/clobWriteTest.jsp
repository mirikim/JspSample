<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<%
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	StringBuffer sb = null;
	//sb는 대용량의 문자데이터를 저장할 버퍼 객체

	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:ORCL";

	String sql = "INSERT INTO clobtable (num,content)VALUES (1,empty_clob())";
	//1번째 컬럼에 값을 넣는 함수 = empty_clob()
	String sql2 = "SELECT content FROM clobtable WHERE num=1 FOR UPDATE";
	
	try {
		Class.forName(driver);
		conn = DriverManager.getConnection(url, "scott", "tiger");

		conn.setAutoCommit(false);
		
		sb = new StringBuffer();
		for (int i = 0; i <= 10000; i++) {
			sb.append("홍길동");
		}//대용량문자데이터(홍길동을 10000번)를 sb에 넣는다.
		
		//보통 위에서 sql문을 스트링 객체로 만들어서 넣는다.
		pstmt = conn.prepareStatement(sql);
		pstmt.executeUpdate();
		//sql문이 insert문이므로 executeUpdate()를 해줘야한다.
		pstmt.close();

		pstmt = conn.prepareStatement(sql2);
		rs = pstmt.executeQuery();
		//sql문이 select문이므로 executeQuery()를 해ㅇ준다.
		if (rs.next()) {
			oracle.sql.CLOB clob = (oracle.sql.CLOB) (rs).getClob("content");
			//getClob()  Clob타입의 칼럼을 가져오는 메서드 (content는 clob타입)
			BufferedWriter bw = new BufferedWriter(clob.getCharacterOutputStream());
			//clob안에 들어있는 객체들을 문자출력스트림으로 변환해서 버퍼에 써준다.
			bw.write(sb.toString());
			bw.close();
		}
		pstmt.close();

		conn.commit();
		//데이터를 다넣은후 안정적으로 commit 하겠다.
		conn.setAutoCommit(true);
		out.println("데이타를 저장했습니다.");
		rs.close();
		pstmt.close();
		conn.close();
	} catch (Exception e) {
		e.printStackTrace();
	}
%>
<html>
<head>