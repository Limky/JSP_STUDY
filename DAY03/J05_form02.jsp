<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	
	<h2>목적지 페이지</h2>
	<hr/>
	
	<% 
	String name=request.getParameter("id");
	String rage=request.getParameter("age");
	%>
	
	name=<%=name %><br/>
	age=<%=rage %><br/>
	

</body>
</html>
