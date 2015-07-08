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
	String pw1=request.getParameter("pw1");
	String pw2=request.getParameter("pw2");
	String rage=request.getParameter("age");
	
	int age=Integer.parseInt(rage);
	
	if(pw1.equals(pw2)){
			if(age>=10){	
	%>
	일반인 등록이 완료되었습니다.<br/>
	<%
	}else{	
	%>
	청소년 할인 대상으로 등록되었습니다.<br/>
	<%
	} 
	%>	
	<%
	}else{ %>
	
	"비밀번호 불일치로 등록되지 않습니다."<br/>
	<a href="/Day03/J06_Quiz01.jsp">이전 화면으로 이동</a>
	
	<%
	} 
	%>
	
	

</body>
</html>
