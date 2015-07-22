<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<script src="http://code.jquery.com/jquery-latest.js"></script>
	<script src="js/bootstrap.min.js"></script>
		
		
		
		
	 <form name="frm" style="height:5%">
	 
	 	
	 
	 
		<input type="hidden" name="pmain"/>
		<table style="width:100%; height:100%; background-color:#D5D5D5">
			<tr>
				<td align="right">
				ID:<input size="10" type="text" name="id"/>
				PW:<input size="10" type="text" name="pw"/>
				<input type="button" value="Sign up"/>
				<input type="button" value="Sign in" onclick="javascript:gof01j01()"/>
				
				</td>
			
			</tr>
		</table>
	</form>
	
		<ul class="nav nav-tabs">
			<li role="presentation" ><a href="/Project02/index.jsp?
			main=/mainhome.jsp">Home</a></li>
			<li role="presentation" ><a href="/Project02/index.jsp?
			main=/profile.jsp">Profile</a></li>
			<li role="presentation"><a href="#">Messages</a></li>

			<li role="presentation" class="dropdown"><a
				class="dropdown-toggle" data-toggle="dropdown" href="#"
				role="button" aria-expanded="false"> Dropdown <span
					class="caret"></span>
			</a>

				<ul class="dropdown-menu" role="menu">
					<li><a href="#">Action</a></li>
					<li><a href="#">Another action</a></li>
					<li><a href="#">Something else here</a></li>
					<li class="divider"></li>
					<li><a href="#">Separated link</a></li>
					<li class="divider"></li>
					<li><a href="#">One more separated link</a></li>

				</ul>
		</ul>
		
</body>
</html>
