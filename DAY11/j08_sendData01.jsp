<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
		
		<h2><a href="/Day11/j08_sendData02.jsp?data=sendRedirect">sendRedirect 방식으로 데이터를 파라미터 전송</a></h2>
		<!--첫번째 방식-->
		
		<h2><a href="/Day11/j08_sendData03.jsp?data=forward">forward 방식으로 데이터를 파라미터 전송</a></h2>
		<!--두번째 방식-->

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

	<%
		System.out.println("페이지 02 도착");
		response.sendRedirect("/Day11/j08_sendData04.jsp");
	
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

	<%
		System.out.println("페이지 02 도착");
		
	%>
	<jsp:forward page="/j08_sendData04.jsp"/>



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

	<h2>페이지 03 도착 :<%=request.getParameter("data") %></h2>

</body>
</html>




