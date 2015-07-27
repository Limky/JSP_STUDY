<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
    <%@ page import="dao.J02_DB_Board" %>
    <%@ page import="java.util.*" %>
    <%@ page import="dto.J02_BoardDto" %>
    
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<%
		J02_DB_Board dao = new J02_DB_Board();
		
		ArrayList<J02_BoardDto> listc = dao.readAll();
	%>

	<a href="/Model/index.jsp?pmain=/f02_board/j02_boardWrite.jsp">글쓰기</a> 
	
	<table style="width: 100%; height=100%" border="1">
		<tr style="height: 10%">
			<td style="width: 10%">번 호</td>
			<td>제 목</td>
			<td style="width: 15%">공개 여부</td>
		</tr>
		
	<%
		for(J02_BoardDto each : listc) {
	%>	
		<tr>
			<td><%= each.getNum() %></td>
			<td>
				<a href="/Model/index.jsp
							?pmain=/f02_board/j04_boardDetail.jsp
							&num=<%=each.getNum()%>">
					<%= each.getTitle() %>
				</a>
			</td>
			<td><%= each.getOpen() %></td>
		</tr>
	<%
		}
	%>
			
	</table>
	
	


</body>
</html>





