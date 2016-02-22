<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<jsp:useBean id="join" class="Day37_060222.JoinBean" />
<jsp:setProperty name="join" property="*" />
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>회원가입 입력 정보 확인 페이지</title>
</head>
<body>
	<center>
		<table border=1>
			<tr>
				<td bgcolor="yellow"><font size=2>아이디 : </font></td>
				<td bgcolor="yellow"><jsp:getProperty property="id" name="join" /></td>
			</tr>
			<tr>
				<td bgcolor="yellow"><font size=2>비밀번호 : </font></td>
				<td bgcolor="yellow"><jsp:getProperty property="pass"
						name="join" /></td>
			</tr>
			<tr>
				<td bgcolor="yellow"><font size=2>이름 :</font></td>
				<td bgcolor="yellow"><jsp:getProperty property="name"
						name="join" /></td>
			</tr>
			<tr>
				<td bgcolor="yellow"><font size=2>성별 :</font></td>
				<td bgcolor="yellow"><jsp:getProperty property="sex"
						name="join" /></td>
			</tr>
			<tr>
				<td bgcolor="yellow"><font size=2>나이 :</font></td>
				<td bgcolor="yellow"><jsp:getProperty property="age"
						name="join" /></td>
			</tr>
			<tr>
				<td bgcolor="yellow"><font size=2>이메일주소 :</font></td>
				<td bgcolor="yellow"><jsp:getProperty property="email"
						name="join" /></td>
			</tr>

		</table>
	</center>
</body>
</html>