<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>EL 연산자 사용 예제</title>
</head>
<body>
	<h3>\${5+7} = ${5+7}</h3>
	<h3>\${8-3} = ${8-3}</h3>
	<h3>\${6*3} = ${6*3}</h3>
	<h3>\${9 /3} = ${9 / 3}</h3>
	<h3>\${10%3} = ${10%3}</h3>
	<h3>\${10==9} = ${10==9}</h3>
	<h3>\${5 !=7} = ${5 != 7}</h3>
	<h3>\${7<8} = ${7<8}</h3>
	<h3>\${8>8} = ${8>8}</h3>
	<h3>\${15<=9} = ${15<=9}</h3>
	<h3>\${7>=2} = ${7>=2}</h3>
	<h3>\${5+3==8 ? 8 : 10 } = ${5+3==8 ? 8 : 10 }</h3>
</body>
</html>