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
			
			
			int n=Integer.parseInt(request.getParameter("sbjscore1"))+
			Integer.parseInt(request.getParameter("sbjscore2"))+
			Integer.parseInt(request.getParameter("sbjscore3"))+
			Integer.parseInt(request.getParameter("sbjscore4"))+
			Integer.parseInt(request.getParameter("sbjscore5"))+
			Integer.parseInt(request.getParameter("sbjscore6"))+
			Integer.parseInt(request.getParameter("sbjscore7"))+
			Integer.parseInt(request.getParameter("sbjscore8"));
	%>






	<div class="jumbotron">
		<h1>
			Welcome to Grade calculator web page!<br /> <small>Don't
				worry already decision your grade all F.</small>
		</h1>
	</div>



	<script src="http://code.jquery.com/jquery-latest.js"></script>
	<script src="js/bootstrap.min.js"></script>

	<h2 style="margin-left: 350px;">성적 결과 페이지</h2>
	<hr />
	첫번째 취득학점<%=com.getGrade1()%><br /> 
	첫번째 해당학점<%=request.getParameter("sbjscore1")%><br />
	총 취득 학점<%=String.format("%.3f",com.getSum())%><br />





</body>
</html>
