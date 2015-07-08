<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	
	<% 
			String rcvID=request.getParameter("id");
			String rcvPW=request.getParameter("pw");
			
			String dbID="abcd";
			String dbPw="1234";
			//http://localhost:8080/Day03/J01_request.jsp?id=abcd&pw=1234 
			//이렇게클라이언트로부터 인풋을 줘야지 페이지 가동.
	%>
	
	
	<h2>로그인 페이지</h2>
	<hr/>
	
	
	rcvID=<%=rcvID %><br/>
	rcvPW=<%=rcvPW %><br/>
	<hr/>
	
	<% 
		if(rcvID.equals(dbID)&& rcvPW.equals(dbPw)){
	%>
	   로그인 되었습니다. <br/>
	   <%=dbID%>님 환영합니다.<br/>
	   
	   <% 
		}else{
	   %>
	   로그인 정보가 일치하지 않습니다..<br/>
	   <% 
	   
		}
		
		%>
	   
</body>
</html>
