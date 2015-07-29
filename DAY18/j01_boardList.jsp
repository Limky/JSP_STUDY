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
// 		=> 전체 정보를 가지고 있는 컬렉션
		
		ArrayList<J02_BoardDto> viewlist = new ArrayList();
// 		=> 선택된 페이지에 보여줄 정보만 저장할 컬렉션
		
		int startPage = 1;	// 페이지 목록상의 처음 숫자
		int endPage = 1;	// 페이지 목록상의 마지막 숫자
		int nowPage = 1;	// 현재 클라이언트가 선택한 페이지 번호
		int degree = 3;		// 한 페이지 당 보여줄 글의 갯수
		
		if(listc != null) {

// 			#. 마지막 페이지 설정
			endPage = listc.size() / degree;
// 			=> listc.size() : 전체 글의 갯수
			if(listc.size() % degree != 0) {
				endPage++;
			}

// 			#. 클라이언트가 요청하는 페이지 번호 설정(기본값 1)
			System.out.println("nowp = " 
							+ request.getParameter("nowp"));
			if(request.getParameter("nowp") != null) {
				String rcv = request.getParameter("nowp");
				nowPage = Integer.parseInt(rcv);
			}
			
			
// 			listc에 담긴 글 중 클라이언트가 선택한 페이지에
// 			해당하는 글의 인덱스만 선택해서 viewlist에 담기
// 			- List 컬렉션의 데이터 인덱스 번호는 0부터 시작함
// 			- 한 페이지 당 3개 글을 보여줌
// 			예: 1페이지에 들어갈 인덱스 번호는  0 ~ 2
// 			예: 2페이지에 들어갈 인덱스 번호는  3 ~ 5
// 			예: 3페이지에 들어갈 인덱스 번호는  6 ~ 8
			
			int startIndex = (nowPage - 1) * degree; 
			int endIndex = (nowPage*degree) - 1;
			if(endIndex >= listc.size()-1 ) {
				endIndex = listc.size()-1;
			}
// 			=> 전체 정보 중 계산에 의해 원하는 인덱스의 정보를
// 				가져올 예정인데, 실제 저장된 정보의 마지막 인덱스가
// 				계산된 인덱스보다 작은 경우에는 에러가 발생하므로,
// 				계산된 인덱스가 실제 인덱스보다 크면
// 				위와 같이 설정한다.

			for(int i=startIndex; i<=endIndex; i++) {
				viewlist.add(listc.get(i));
			}
// 			=> 선택 페이지에 해당하는 인덱스 정보만 
// 				get으로 추출한 후, 새로운 viewlist 컬렉션에
// 				담아 화면에 보여준다.

		}
		
	%>

	<a href="/Model/index.jsp?pmain=/f02_board/j02_boardWrite.jsp">글쓰기</a> 
	
	<table style="width: 100%; height=100%" border="1">
		<tr style="height: 10%">
			<td style="width: 10%">번 호</td>
			<td>제 목</td>
			<td style="width: 15%">공개 여부</td>
		</tr>
		
	<%
		for(J02_BoardDto each : viewlist) {
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
	
	<%
		for(int i=startPage; i<=endPage; i++) {
	%>
			<a href= "/Model/index.jsp?
					pmain=/f02_board/j01_boardList.jsp
					&nowp=<%= i %>">[<%= i %>]</a> &nbsp;
	<%
		}
	%>
	
	


</body>
</html>





