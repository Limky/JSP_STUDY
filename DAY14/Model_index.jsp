bottom
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>


	<h2 align="center">bottom</h2>


</body>
</html>



left
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

	<script type="text/javascript">
		function gof02j01() {
			frm2.pmain.value = "/f02_board/j01_boardList.jsp"; 			
			frm2.submit();
		}
	</script>

</head>
<body>

	<form name="frm2" action="/Model/index.jsp" method="post">
		<input type="hidden" name="pmain"/>
	
		<table style="width: 100%; height: 100%">
			<tr>
				<td align="center">
					<a href="/Model">HOME 화면</a>
				</td>
			</tr>
			<tr>
				<td align="center">
					<a onclick="javascript:gof02j01()">자유게시판</a>
				</td>
			</tr>
		</table>
	</form>


</body>
</html>



mainHome
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>


	<h2 align="center">mainHome</h2>


</body>
</html>




template
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<%
		String nowMain = (String)request.getAttribute("main");
	%>

	<table style="width: 100%; height: 100%" border="1">
		<tr style="height: 25%">
			<td colspan="2">
				<jsp:include page="/top.jsp"/>
			</td>
		</tr>
		<tr>
			<td style="width: 20%">
				<jsp:include page="/left.jsp"/>
			</td>
			<td>
				<jsp:include page="<%= nowMain %>"/>
			</td>
		</tr>
		<tr style="height: 15%">
			<td colspan="2">
				<jsp:include page="/bottom.jsp"/>
			</td>
		</tr>
	</table> 
	





</body>
</html>










top
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

	<script type="text/javascript">
		function gof01j01() {
			frm.method = "post";
			frm.action = "/Model/index.jsp";
			frm.pmain.value = "/f01_regLog/j01_regLogForm.jsp";
			frm.submit();
		}
	</script>

</head>
<body>

	
	<form name="frm" style="height: 100%" method="post">
		<input type="hidden" name="pmain"/>
	
		<table style="width: 100%; height: 100%">
			<tr>
				<td align="center">
					<h1>홈페이지 제목</h1>
				</td>
			</tr>
			<tr>
				<td align="right">
					아이디 : 
						<input size="10" type="text" name="id"/>
					비밀번호 : 
						<input size="10" type="text" name="pw"/>
					<input type="button" value="로그인"/>
					<input type="button" value="회원가입"
							onclick="javascript:gof01j01()" />
				</td>
			</tr>		
		</table>
	</form>

</body>
</html>


index
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>


	<%
		
		String main = request.getParameter("pmain"); 
		System.out.println("index : " + main);
		
		if(main == null) {
			main = "/mainHome.jsp";
		}

		request.setAttribute("main", main);
	%>

	<jsp:include page="/template.jsp"/>



</body>
</html>


































