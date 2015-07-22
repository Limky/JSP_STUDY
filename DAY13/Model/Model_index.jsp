<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	
	<h2 align="center">BOTTOM</h2>



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
	
	<form>
		<table style="width:100%; height:100%">
			<tr>
				<td align="center"><a href="/Model">Home</a></td>
			
			
			</tr>
		</table>
	
	</form>



</body>
</html>

<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script type="text/javascript">

	function gof01j01(){
		/* 
		이동할 경로:action ->여기서는 index
		전달할 값:파라미터->main에서 바뀌어야할 jsp 경로정보 */
		
		
		frm.method="post";
		frm.pmain.value="/f01_regLog/j01_regLogForm.jsp";
		frm.action="/Model/index.jsp";
	 	frm.submit();  
		
	}


</script>

</head>
<body>
	
	<form name="frm" style="height:100%">
		<input type="hidden" name="pmain"/>
		<table style="width:100%; height:100%">
			<tr>
				<td align="center"><h1>HomePage title</h1></td>
			</tr>
			
			<tr>
			
				<td align="right">
				아이디:<input size="10" type="text" name="id"/>
				비밀번호:<input size="10" type="text" name="pw"/>
				<input type="button" value="로그인"/>
				<input type="button" value="회원가입" onclick="javascript:gof01j01()"/>
				
				</td>
			
			</tr>
		</table>
	</form>
	
	




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
	
	<h2 align="center">Mainhome</h2>



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
	
	<h2>Model index page</h2>
	
	<%
		String main=request.getParameter("pmain");
		if(main==null){
			main="/mainhome.jsp";
			
		}	
		request.setAttribute("main", main);
	
	%>
	<jsp:forward page="/template.jsp"/>





<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<style type="text/css">
#header{
/* <!--background-image:url('http://grandnewyork.hyatt.com/content/dam/PropertyWebsites/grandhyatt/nycgh/Media/All/Grand-Hyatt-New-York-Bar.jpg');-->
 */
background-image:url("./images/Grand-Hyatt-New-York-Bar.jpg");
background-position:0px 280px;
/*  background-repeat:repeat-y; */
}
</style>

</head>
<body>
		<%
			String nowMain=(String)request.getAttribute("main");
			
		%>



		<table style="width:100%; height:100%" border="1">
		<tr id=header style="height:35%">
			<td id=header colspan="2" style="height:25%">
			<jsp:include page="/top.jsp"/>
			</td>
		
		</tr>

		<tr>
			<td style="width:25%"><jsp:include page="/left.jsp"/></td>
			<td><jsp:include page="<%=nowMain %>"/></td>
		
		</tr>
		
		<tr style="height:15%">

			<td colspan="2"><jsp:include page="/bottom.jsp"/></td>
		
		</tr>	
	
	
	
     	</table>
	



</body>
</html>






</body>
</html>







