<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<%@ page import="data.grade_get"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

<!-- Bootstrap -->
<link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
<style>
.jumbotron {
	background:
		url('http://www.v3wall.com/wallpaper/medium/1004/medium_20100414125942578426.jpg');
	/* background: url('http://cfile5.uf.tistory.com/image/2543D04A52E86964203963'); */
	background-repeat: repeat-x;
	padding: 50px;
	margin: 10px;
}
#AA{
	background-color: #FAC6C6;
}

table {
	margin: 30px;
	width: 500px;
	/* margin-top:px; */
	margin-left: 350px;
	/* margin-top:1px; */
}

tr{

	text-align: center;
}

#A{
	font-size:20px;
	font-weight: bold;
}

</style>
</head>
<body>

	<%
		request.setCharacterEncoding("euc-kr");
 		
	grade_get com=new grade_get(
			Double.parseDouble(request.getParameter("grade1"))*
			Double.parseDouble(request.getParameter("sbjscore1")),
			Double.parseDouble(request.getParameter("grade2"))*
			Double.parseDouble(request.getParameter("sbjscore2")),
			Double.parseDouble(request.getParameter("grade3"))*
			Double.parseDouble(request.getParameter("sbjscore3")),
			Double.parseDouble(request.getParameter("grade4"))*
			Double.parseDouble(request.getParameter("sbjscore4")),
			Double.parseDouble(request.getParameter("grade5"))*
			Double.parseDouble(request.getParameter("sbjscore5")),
			Double.parseDouble(request.getParameter("grade6"))*
			Double.parseDouble(request.getParameter("sbjscore6")),
			Double.parseDouble(request.getParameter("grade7"))*
			Double.parseDouble(request.getParameter("sbjscore7")),
			Double.parseDouble(request.getParameter("grade8"))*
			Double.parseDouble(request.getParameter("sbjscore8"))
			);
	double n=Double.parseDouble(request.getParameter("sbjscore1"))+
			Double.parseDouble(request.getParameter("sbjscore2"))+
			Double.parseDouble(request.getParameter("sbjscore3"))+
			Double.parseDouble(request.getParameter("sbjscore4"))+
			Double.parseDouble(request.getParameter("sbjscore5"))+
			Double.parseDouble(request.getParameter("sbjscore6"))+
			Double.parseDouble(request.getParameter("sbjscore7"))+
			Double.parseDouble(request.getParameter("sbjscore8"));

	
	double total=0;
	if(!request.getParameter("major1").equals("null")){
		total+=Double.parseDouble(request.getParameter("major1"));
	}
	if(!request.getParameter("major2").equals("null")){
		total+=Double.parseDouble(request.getParameter("major2"));
	}
	if(!request.getParameter("major3").equals("null")){
		total+=Double.parseDouble(request.getParameter("major3"));
	}
	if(!request.getParameter("major4").equals("null")){
		total+=Double.parseDouble(request.getParameter("major4"));
	}
	if(!request.getParameter("major5").equals("null")){
		total+=Double.parseDouble(request.getParameter("major5"));
	}
	if(!request.getParameter("major6").equals("null")){
		total+=Double.parseDouble(request.getParameter("major6"));
	}
	if(!request.getParameter("major7").equals("null")){
		total+=Double.parseDouble(request.getParameter("major7"));
	}
	if(!request.getParameter("major8").equals("null")){
		total+=Double.parseDouble(request.getParameter("major8"));
	} 
				
	%>

	<div class="jumbotron">
		<h1>
			Welcome to Grade calculator web page!<br /> 
			<small>The Website has a commitment to provide report card.</small>
		</h1>
	</div>

	<script src="http://code.jquery.com/jquery-latest.js"></script>
	<script src="js/bootstrap.min.js"></script>

	<h2 style="margin-left: 350px;">Calculation result</h2>
	<hr />

	
	<div class="alert alert-warning" role="alert">
  <a href="#" class="alert-link"><table style="table-layout: fixed">
	<tr>
		<td>총 평점</td>
		<td>이수평점</td>
		<td>전공이수</td>
	</tr>
	<tr>
		<td id="A"><%=String.format("%.1f" , com.getSum()/n) %>/4.5</td>
		<td id="A"><%=n %></td>
		<td id="A"><%=total %></td>
	</tr>
	
	</table></a>
	
	</div>

	  <ul class="pager">
    	<li><a href="http://localhost:8080/Day01/limky01.jsp" 
    	onclick="history.back()">try again</a></li>  
 	 </ul>

 	 
 	 	<div class="alert alert-success" role="alert" align="center">
			<a href="https://m.vingle.net/posts/829058-%EC%84%B1%EA%B
			3%B5%ED%95%98%EA%B3%A0-%EC%8B%B6%EB%8B%A4%EB%A9%B4-%EC%B6%94%
			EC%B2%9C%ED%95%98%EB%8A%94-%EA%B0%95%EC%97%B0-BEST-9?s=fb" 
			class="alert-link">Never let your memories be greater
				than your dreams.</a>
		</div>

	
	

</body>
</html>
