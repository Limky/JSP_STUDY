<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	
	<a href="/Day03/J04_ahref02.jsp">다음 화면으로 이동</a><br/>
	
	<a href="/Day03/J04_ahref02.jsp?id=abcd&pw1234">
	파라미터(정보)를 가지고 다음 화면으로 이동</a><br/>
	
	<!--href 주소에서 / 시작하면 절대경로 설정임  -->
	
	<a href="javascript:location.href='/Day03/J04_ahref02.jsp'">자바스크립트 형식으로 이동</a>
	
</body>
</html>
