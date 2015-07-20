<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	
	<h2><a href="/Day11/j07_setHeader02.jsp">페이지 02에서 2초 후 03으로 이동</a></h2>


</body>
</html>

<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<h2 align="center">2초 후 03페이지로 이동합니다.</h2>

	<%
	
		response.setHeader("Refresh","2; url=/Day11/j07_setHeader03.jsp");
	
	%>

</body>
</html>



<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<h2 align="center">페이지 03 도착</h2>

	
</body>
</html>


