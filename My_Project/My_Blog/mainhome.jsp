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
/* #jb-container {
	width: 1200px;
	margin: 0px auto;
	padding: 20px;
	border: 0px solid #bcbcbc;
} */

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

#mark {
	margin-bottom: 15px;
}

#carousel-example-generic{
	margin-bottom: 15px;


}
</style>


</head>
<body>


	<%
		String nowmain = (String) request.getAttribute("main");
	%>

	<table  align="center" id="mark">
		<tr>
			<td><h1 style="font-family: fantasy;">FANTASY&nbsp;</h1></td>
			<td><img alt="mark" src="./images/mark.png"></td>
			<td><h1 style="font-family: fantasy;">&nbsp;Limky</h1></td>
		</tr>

	</table>



	<div id="carousel-example-generic" class="carousel slide"
		data-ride="carousel">
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="#carousel-example-generic" data-slide-to="0"
				class="active"></li>
			<li data-target="#carousel-example-generic" data-slide-to="1"></li>
			<li data-target="#carousel-example-generic" data-slide-to="2"></li>
		</ol>
		<!-- style='position: relative; top:-200' -->
		<!-- Wrapper for slides -->
		<div class="carousel-inner" role="listbox"
			style="width: 1158; height: 444">


			<div class="item active">
				<img align="middle" src="./images/Model.png">

				<div class="carousel-caption">
					<h1 style="color: #FFFFFF">Don't stop the fashion</h1>
					<p style="color: #FFFFFF">Beauty is nature's coin, must not be
						hoarded,but must be current,</p>
					<p style="color: #FFFFFF">and the good there of consists in
						mutual and partaken bliss.</p>
				</div>

			</div>



			<div class="item">
				<img src="./images/coldpaly.png" alt="...">
				<div class="carousel-caption">
					<h1>Cold Play</h1>
					<p class="lead">Parachutes A Rush of Blood to the Head X&Y Viva
						la Vida or Death and All His Friends Mylo Xyloto Ghost Stories</p>
				</div>
			</div>


			<div class="item">
				<img align="middle" src="./images/skyline.jpg">

				<div class="carousel-caption">
					<h1 style="color: #FFFFFF">It's come from saying 'no' to 1,000
						things</h1>
					<p class="lead" style="color: #FFFFFF">I think if you do
						something and it turns out pretty good, then you should go do
						something else wonderful, not dwell on it for too long.</p>

				</div>

			</div>
		</div>





		<!-- Controls -->
		<a class="left carousel-control" href="#carousel-example-generic"
			role="button" data-slide="prev"> <span
			class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span> <span
			class="sr-only">Previous</span>
		</a> <a class="right carousel-control" href="#carousel-example-generic"
			role="button" data-slide="next"> <span
			class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
			<span class="sr-only">Next</span>
		</a>
	</div>

	<script type="text/javascript">
			$('.carousel').carousel({
				interval : 5000
			})
		</script>


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
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean nec mollis nulla. Phasellus lacinia tempus mauris eu laoreet. Proin gravida velit dictum dui consequat malesuada. Aenean et nibh eu purus scelerisque aliquet nec non justo. Aliquam vitae aliquet ipsum. Etiam condimentum varius purus ut ultricies. Mauris id odio pretium, sollicitudin sapien eget, adipiscing risus.</p>
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean nec mollis nulla. Phasellus lacinia tempus mauris eu laoreet. Proin gravida velit dictum dui consequat malesuada. Aenean et nibh eu purus scelerisque aliquet nec non justo. Aliquam vitae aliquet ipsum. Etiam condimentum varius purus ut ultricies. Mauris id odio pretium, sollicitudin sapien eget, adipiscing risus.</p>
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
		<p align="center">2015 MyBlog, Inc. Terms Privacy Security Contact
			&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
			&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
			&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
			&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
			&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Status API
			Training Shop Blog About Help</p>


	</div>
</body>
</html>



