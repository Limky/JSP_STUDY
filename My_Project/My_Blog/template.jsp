<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<!-- Bootstrap -->
<link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
<style>
#jb-container {
	width: 1200px;
	margin: 0px auto;
	padding: 20px;
	border: 0px solid #bcbcbc;
}

#jb-header {
	height: 40%;
	padding: 20px;
	margin-bottom: 20px;
	border: 1px solid #bcbcbc;
	/* background-image:
		url("http://staticpages.mngbcn.com/homes/images/home/assets/she/ss15/mayo/mixto_v3.jpg"); */
	background-image: url("./images/top.png");
	background-position: 0 400px;
}

#jb-sidebar-left {
	width: 160px;
	padding: 20px;
	margin-right: 20px;
	margin-bottom: 20px;
	float: left;
	border: 1px solid #bcbcbc;
}

#jb-content {
	width: 450px;
	padding: 20px;
	margin-bottom: 20px;
	float: left;
	border: 1px solid #bcbcbc;
}

#jb-sidebar-right {
	width: 160px;
	padding: 20px;
	margin-bottom: 20px;
	float: right;
	border: 1px solid #bcbcbc;
}

#jb-footer {
	clear: both;
	padding: 20px;
	border: 1px solid #bcbcbc;
}
</style>

</head>
<body>
	<script src="http://code.jquery.com/jquery-latest.js"></script>
	<script src="js/bootstrap.min.js"></script>
	
	<%
		String nowmain=(String)request.getAttribute("main");
	
	
	%>



	<div id="login-bar">

		<jsp:include page="/navi.jsp" />

	</div>


	<div id="jb-container">
		<div id="jb-header">
			<h1 style="color: #FFFFFF">Don't stop the fashion</h1>
			<p style="color: #BDBDBD">Beauty is nature's coin, must not be
				hoarded,but must be current,</p>
			<p style="color: #BDBDBD">and the good there of consists in
				mutual and partaken bliss.</p>
		</div>
		<div id="jb-sidebar-left">
			<h2>Sidebar</h2>
			<ul>
				<li>Lorem</li>
				<li>Ipsum</li>
				<li>Dolor</li>
			</ul>
		</div>
		
		<div id="jb-content">
			<h2>Content</h2>
			<jsp:include page="<%=nowmain%>" />
		</div>
		
		<div id="jb-sidebar-right">
			<h2>Sidebar</h2>
			<ul>
				<li>Lorem</li>
				<li>Ipsum</li>
				<li>Dolor</li>
			</ul>
		</div>
		<div id="jb-footer">
			<p>Copyright</p>
		</div>
	</div>



</body>
</html>
