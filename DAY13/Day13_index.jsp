<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	
	<%
	
		
			String main=request.getParameter("main");
			
			if(main==null){
				
				main="/j01_main.jsp";
				
			}
			request.setAttribute("main", main);
	%>
	
	<jsp:include page="/j01_template.jsp"/>


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

	<h2 align="center">LEFT</h2>

		
	<h2 align="center"><a href="/Day13/index.jsp?main=/j01_main01.jsp" >News</a></h2>
	<hr/>
	
	
	<h2 align="center"><a href="/Day13/index.jsp?main=/j01_main02.jsp" >Blog</a></h2>
	<hr/>
	

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

	<h2 align="center">MAIN</h2>

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

	<h2 align="center">MAIN 01</h2>

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

	<h2 align="center">MAIN 02</h2>

</body>
</html>




<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<style type="text/css">
h1{

	color:#4C4C4C;

}


</style>

</head>
<body>

	<h1 align="center">Find a place to stay</h1>
	<p align="center">Rent from people in over 34,000 cities and 192 countries.</p>

	


</body>
</html>







<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<style type="text/css">

#header{

background-image:url('http://grandnewyork.hyatt.com/content/dam/PropertyWebsites/grandhyatt/nycgh/Media/All/Grand-Hyatt-New-York-P220-Empire-State-Building-1280x427.jpg');


}

</style>

</head>
<body>

	<%
		String nowMain=(String)request.getAttribute("main");
	
		/*  if(nowMain==null){
			
			nowMain=request.getParameter("main");
		}  */
	%>

	getAttr:<%=request.getAttribute("main") %><br/>
 	getPara:<%=request.getParameter("main") %><br/>  

	<table style="width:100%; height:100%" border="1">
		<tr id=header style="heigth:25%">
			<td colspan="2">
			<jsp:include page="/j01_top.jsp"/>
			</td>
		
		</tr>

		<tr>
			<td style="width:25%"><jsp:include page="/j01_left.jsp"/></td>
			<td><jsp:include page="<%=nowMain %>"/></td>
		
		</tr>
		
		<tr style="height:15%">

			<td colspan="2"><jsp:include page="/j01_bottom.jsp"/></td>
		
		</tr>	
	
	
	
	</table>
	



</body>
</html>









