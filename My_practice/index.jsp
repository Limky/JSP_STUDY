<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">

<title>Insert title here</title>
<title>Bootstrap 101 Template</title>
<script type="text/javascript">
	
	function Grade_reset(){
		
		frm.reset();
			
	}
	
</script>

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
 table{
	
    margin: 30px;
    width: 500px;
    /* margin-top:px; */
    margin-left:350px;
    

}
tr, td {
	/* background-color: #f4fafc; */
	border: 1px solid gray;
	padding: 1px;
	background-color: EEEEEE;
	width:20px;
}

.S1 {
	background-color: BBBBBB;
	text-align: center;
	width:18px;
}

.table-bordered {
	margin: 40px 40px 40px 40px;
}

input{
	text-align: center;
	width:119px;
}


</style>
</head>
<body>

	<div class="jumbotron">
		<h1>
			Welcome to Grade calculator web page!<br /> <small>Don't
				worry already decision your grade all F.</small>
		</h1>
	</div>



	<script src="http://code.jquery.com/jquery-latest.js"></script>
	<script src="js/bootstrap.min.js"></script>

	<h2 style="margin-left:350px;">성적 입력 페이지</h2>


<form name="frm" action="/Day01/limky02.jsp" method="post">
	<table style="table-layout: fixed" >


			<tr>
				<td class="S1">과목</td>
				<td class="S1">점수</td>	
				<td class="S1">학점</td>
				<td class="S1">전공</td>
			</tr>		
		
	
			<tr>

			<td><input type="text" name="subject1"></td>
			<td><select name="grade1">
				<option value="101">Select</option>
					<option value="4.5">A+</option>
					<option value="4">A</option>
					<option value="3.5">B+</option>
					<option value="3">B</option>
					<option value="2.5+">C+</option>
					<option value="2">C</option>
					<option value="1.5">D+</option>
					<option value="1">D</option>
					<option value="0">F</option>		
			</select>
			</td>
			<td><input type="text" name="sbjscore1"/></td>
			<td><input type="checkbox" name="major1"
			value="3"/></td>
		</tr>


			<tr>

			<td><input type="text" name="subject2"></td>
			<td><select name="grade2">
				<option value="101">Select</option>
					<option value="4.5">A+</option>
					<option value="4">A</option>
					<option value="3.5">B+</option>
					<option value="3">B</option>
					<option value="2.5+">C+</option>
					<option value="2">C</option>
					<option value="1.5">D+</option>
					<option value="1">D</option>
					<option value="0">F</option>		
			</select>
			</td>
			<td><input type="text" name="sbjscore2"/></td>
				<td><input type="checkbox" name="major2"
			value="3"/></td>
		</tr>
		<tr>

			<td><input type="text" name="subject3"></td>
			<td><select name="grade3">
					<option value="101">Select</option>
					<option value="4.5">A+</option>
					<option value="4">A</option>
					<option value="3.5">B+</option>
					<option value="3">B</option>
					<option value="2.5+">C+</option>
					<option value="2">C</option>
					<option value="1.5">D+</option>
					<option value="1">D</option>
					<option value="0">F</option>		
			</select>
			<td><input type="text" name="sbjscore3"/></td>
				<td><input type="checkbox" name="major3"
			value="3"/></td>
		
		</tr>
		
		<tr>

			<td><input type="text" name="subject4"></td>
			<td><select name="grade4">
				<option value="101">Select</option>
					<option value="4.5">A+</option>
					<option value="4">A</option>
					<option value="3.5">B+</option>
					<option value="3">B</option>
					<option value="2.5+">C+</option>
					<option value="2">C</option>
					<option value="1.5">D+</option>
					<option value="1">D</option>
					<option value="0">F</option>		
			</select>
			<td><input type="text" name="sbjscore4"/></td>
				<td><input type="checkbox" name="major4"
			value="3"/></td>
		
		</tr>


			<tr>

			<td><input type="text" name="subject5"></td>
			<td><select name="grade5">
					<option value="101">Select</option>
					<option value="4.5">A+</option>
					<option value="4">A</option>
					<option value="3.5">B+</option>
					<option value="3">B</option>
					<option value="2.5+">C+</option>
					<option value="2">C</option>
					<option value="1.5">D+</option>
					<option value="1">D</option>
					<option value="0">F</option>		
			</select>
			<td><input type="text" name="sbjscore5"/></td>
				<td><input type="checkbox" name="major5"
			value="3"/></td>
			
		</tr>
		<tr>

			<td><input type="text" name="subject6"></td>
			<td><select name="grade6">
				<option value="101">Select</option>
					<option value="4.5">A+</option>
					<option value="4">A</option>
					<option value="3.5">B+</option>
					<option value="3">B</option>
					<option value="2.5+">C+</option>
					<option value="2">C</option>
					<option value="1.5">D+</option>
					<option value="1">D</option>
					<option value="0">F</option>		
			</select>
			<td><input type="text" name="sbjscore6"/></td>
				<td><input type="checkbox" name="major6"
			value="3"/></td>
			
		</tr>
		
		<tr>

			<td><input type="text" name="subject7"></td>
			<td><select name="grade7">
					<option value="101">Select</option>
					<option value="4.5">A+</option>
					<option value="4">A</option>
					<option value="3.5">B+</option>
					<option value="3">B</option>
					<option value="2.5+">C+</option>
					<option value="2">C</option>
					<option value="1.5">D+</option>
					<option value="1">D</option>
					<option value="0">F</option>		
			</select>
			<td><input type="text" name="sbjscore7"/></td>
				<td><input type="checkbox" name="major7"
			value="3"/></td>
		
		</tr>


			<tr>

			<td><input type="text" name="subject8"></td>
			<td><select name="grade8">
		 			<option value="101">Select</option>
					<option value="4.5">A+</option>
					<option value="4">A</option>
					<option value="3.5">B+</option>
					<option value="3">B</option>
					<option value="2.5+">C+</option>
					<option value="2">C</option>
					<option value="1.5">D+</option>
					<option value="1">D</option>
					<option value="0">F</option>			
			</select>
			<td><input type="text" name="sbjscore8"/></td>
				<td><input type="checkbox" name="major8"
			value="3"/></td>
		
		</tr>
	
	
		
		<tr>

			<td colspan="4" align="center"><input type="submit" value="산출하기"/>
			<!-- onclick="javascript:Grade_result()"/> -->
			<input type="button" value="초기화" onclick="javascript:Grade_reset()"/>
			</td>
		
		</tr>

	</table>
</form>


</body>
</html>
