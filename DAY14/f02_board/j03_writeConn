<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
    <%@ page import="dao.J02_DB_Board" %>
    <%@ page import="dto.J02_BoardDto" %>
    
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<%
		request.setCharacterEncoding("euc-kr");
	
		J02_BoardDto data = new J02_BoardDto();
	
		data.setTitle(request.getParameter("title"));
		data.setContents(request.getParameter("contents"));
		data.setOpen(request.getParameter("open"));
	
		J02_DB_Board dao = new J02_DB_Board();
	
		int res = dao.writeOne(data);
	
		if(res > 0) {	
	%>
			<h2 align="center">저장이 완료되었습니다.</h2>
	<%
		} else {
	%>
			<h2 align="center">저장 실패입니다.</h2>
	<%
		}

		response.setHeader("Refresh", "2; url=/Model/index.jsp");
		
	%>





</body>
</html>








