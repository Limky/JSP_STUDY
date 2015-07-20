<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<h2>
		<a href="/Day11/j05_forward02.jsp">페이지 02->03으로 이동(forward방식)</a>
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

	<%
		System.out.println("페이지 02 도착");
		RequestDispatcher rd = request.getRequestDispatcher("/j05_forward03.jsp");
	
		rd.forward(request, response);
		//=> 클라이언트로부터 제공받은 request안에 존재하는 RequestDispatcher 객체를 확보함.
		//=> 확보된 객체의 forward를 사용하면 페이지 이동이 가능.
		//=> 현재 페이지에 존재하는 request와 response 정보를 이동하려는 페이지에 전달이 가능함.
		//=> 주소 설정 시 WebContent 경로를 기본 절대 주소로 인식하기 때문에,절대 주소 표기시 프로젝트의 이름을 제거한
		//=> WebContent 이하의 경로가 명시되어야 한다.
	
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
	
	
	<h1>페이지 03에 도착</h1>
	<!--request forward 는 중간 마지막도착주소를 생략하고 중간주소를 명시-->

</body>
</html>


-----------------------------------jsp forward 태그방식-----------------------------------

<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<h2><a href="/Day11/j06_forward02.jsp">페이지 02 -> 03으로 이동(jsp:forward방식)</a></h2>


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
	
	<jsp:forward page="/j06_forward03.jsp"></jsp:forward>
	<%-- <jsp:forward page="/j06_forward03.jsp"/> 이것도 가능--%>

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
	
	<!-- 페이지 마지막 도착 주소 안보여줌 중간 주소만 명시함 -->
</body>
</html>




