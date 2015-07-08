<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	
	<%--서버의 server.xml에서 
	<Connector~> 설정 부분에
	<Connector URLEncoding="설정문자"~> 설정하면
	URL로부터 한글을 주고 받을 수 있다.
	 --%>
	
	
	<% 
		String name =request.getParameter("name");	
	%>

	name=<%=name %><br/>
	
	<hr/>
	 
	<h2>URL과 URI</h2>
	URL : <%=request.getRequestURL() %><br/> <!-- 통신형식 -->
	URI : <%=request.getRequestURI() %><br/> <!-- 자바 객체형식 -->
	
	
	
	

</body>
</html>
