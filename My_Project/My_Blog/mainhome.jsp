<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<!-- Bootstrap -->
<link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script src="js/bootstrap.min.js"></script>

<style>
/* #myCarousel {
	width: 700px;
	margin: 0px auto;
	padding: 20px;
} */

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


	<%
		String nowmain = (String) request.getAttribute("main");
	%>


	<div id="jb-container">
		<div id="jb-header">
			<h1 style="color: #FFFFFF">Don't stop the fashion</h1>
			<p style="color: #BDBDBD">Beauty is nature's coin, must not be
				hoarded,but must be current,</p>
			<p style="color: #BDBDBD">and the good there of consists in
				mutual and partaken bliss.</p>
		</div>


		

			<div style="verflow-x:hidden;overflow-y:hidden" id="myCarousel" class="carousel slide" data-ride="carousel">
				<!-- Indicators -->
				<ol class="carousel-indicators">
					<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
					<li data-target="#myCarousel" data-slide-to="1" ></li>
					<li data-target="#myCarousel" data-slide-to="2" ></li>

				</ol>

				<!-- Wrapper for slides -->
				<div class="carousel-inner" role="listbox">
					<div class="item active">
						<img width="800" height="400" alt="Chania"
							src="http://desktopbackgroundshq.com/backgrounds/styles/larger/public/harry-styles-fashion-fashion-backgrounds-fashion-harry-styles-26060.jpg?itok=vVXkB9rJ" />
					</div>

					<div class="item">
						<img width="800" height="400" alt="Chania"
							src="http://s4.scoopwhoop.com/anj/rdc/844327839.jpg" />
					</div>
					
					<div class="item">
						<img width="800" height="400" alt="Chania"
							src="http://www.chanel.com/dam/fashion/en/collections/15S/CAMPAIGN/Slideshow/PAP_SS15_AdCamp_DP-01.jpg.fashionImg.low.jpg" />
					</div>
					
				
				</div>

				<!-- Left and right controls -->
				<a class="left carousel-control" href="#myCarousel" role="button"
					data-slide="prev"> <span
					class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
					<span class="sr-only">Previous</span>
				</a> <a class="right carousel-control" href="#myCarousel" role="button"
					data-slide="next"> <span
					class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
					<span class="sr-only">Next</span>
				</a>
			</div>

			<script type="text/javascript">
				$('#myCarousel').carousel({
					interval : 4000,

				})
			</script>


		



		<div id="jb-footer">
			<p>Copyright</p>
		</div>

	</div>









</body>
</html>



