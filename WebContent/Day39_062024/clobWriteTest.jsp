<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<%
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	StringBuffer sb = null;
	//sb�� ��뷮�� ���ڵ����͸� ������ ���� ��ü

	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:ORCL";

	String sql = "INSERT INTO clobtable (num,content)VALUES (1,empty_clob())";
	//1��° �÷��� ���� �ִ� �Լ� = empty_clob()
	String sql2 = "SELECT content FROM clobtable WHERE num=1 FOR UPDATE";
	
	try {
		Class.forName(driver);
		conn = DriverManager.getConnection(url, "scott", "tiger");

		conn.setAutoCommit(false);
		
		sb = new StringBuffer();
		for (int i = 0; i <= 10000; i++) {
			sb.append("ȫ�浿");
		}//��뷮���ڵ�����(ȫ�浿�� 10000��)�� sb�� �ִ´�.
		
		//���� ������ sql���� ��Ʈ�� ��ü�� ���� �ִ´�.
		pstmt = conn.prepareStatement(sql);
		pstmt.executeUpdate();
		//sql���� insert���̹Ƿ� executeUpdate()�� ������Ѵ�.
		pstmt.close();

		pstmt = conn.prepareStatement(sql2);
		rs = pstmt.executeQuery();
		//sql���� select���̹Ƿ� executeQuery()�� �ؤ��ش�.
		if (rs.next()) {
			oracle.sql.CLOB clob = (oracle.sql.CLOB) (rs).getClob("content");
			//getClob()  ClobŸ���� Į���� �������� �޼��� (content�� clobŸ��)
			BufferedWriter bw = new BufferedWriter(clob.getCharacterOutputStream());
			//clob�ȿ� ����ִ� ��ü���� ������½�Ʈ������ ��ȯ�ؼ� ���ۿ� ���ش�.
			bw.write(sb.toString());
			bw.close();
		}
		pstmt.close();

		conn.commit();
		//�����͸� �ٳ����� ���������� commit �ϰڴ�.
		conn.setAutoCommit(true);
		out.println("����Ÿ�� �����߽��ϴ�.");
		rs.close();
		pstmt.close();
		conn.close();
	} catch (Exception e) {
		e.printStackTrace();
	}
%>
<html>
<head>