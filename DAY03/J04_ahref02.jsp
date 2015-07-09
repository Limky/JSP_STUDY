<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<h2>목적지 페이지에 도착</h2>
	<hr/>
	
	<%
		if(request.getParameter("id") != null ) {
	%> 
		id = <%= request.getParameter("id") %> <br/>
		pw = <%= request.getParameter("pw") %> <br/>
	<%
		}
	%>	
</body>
</html>

