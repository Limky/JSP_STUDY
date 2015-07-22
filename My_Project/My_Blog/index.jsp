<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	
	<%
		/* String main=request.getParameter("pmain");
		if(main==null){
			main="/mainhome.jsp";
			
		}	 */
		String main=request.getParameter("main");
		if(main==null){
			
			main="mainhome.jsp";
			
		}
		
		request.setAttribute("main", main);
	
	%>
	
	<jsp:forward page="/template.jsp"/>
	<!--index 페이지가 다음으로 자동으로 이동할 사이트 경로 주소-->



</body>
</html>
