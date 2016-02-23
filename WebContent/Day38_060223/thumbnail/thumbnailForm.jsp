<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>썸네일 이미지 폼</title>
</head>
<body>
	<center>
		<h3>썸네일 이미지 폼 예제</h3>
		<form action="thumbnail.jsp" method="post"
			enctype="multipart/form-data">
			이미지 파일 : <input type="file" name="filename">
			<p>
				<input type="submit" value="전송">
		</form>
	</center>
</body>
</html>