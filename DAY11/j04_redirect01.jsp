<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<h2>
		<a href="/Day11/j04_redirect02.jsp">페이지 02->03으로 이동(response방식)</a>
	</h2>



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

	<h2></h2>

	<%
		System.out.println("페이지 02에 도착");
	
		response.sendRedirect("/Day11/j04_redirect03.jsp");
		//=>클라이언트를 향한 기능을 수행하는 reponse 객체 이용
		//-위의 주소로 자동으로 이동하며,
		// 	url에는 명령한 주소가 출력된다.
	
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

	<h2>페이지 03 도착</h2>
	<!--redirect 는 중간 주소를 생략하고 마지막 주소를 명시-->
	

</body>
</html>

