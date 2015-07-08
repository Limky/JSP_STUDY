<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<%--학생의 성적 정보를 받아서 화면으로 보여주는 프로그램
		
		파라미터 정보
		-아이디 :id / 국어점수 :kor
		-영어점수 :eng / 수학점수 :math
		
		=>table형태로 파라미터 정보를show
		첫번째행->아이디/정보
		두번째행->국어/정보
		새번째행->영어/정보
		네번째행->수학/정보
		다섯번째 줄->총점/정보
		6번째행->평균/정보
		7번째줄->등급/수우미양가
		//id=hot8118&kor=100&eng=90&math=80
		
		
	--%>
<%-- 	<%!	String grade;  %> --%>
	<% 
			String rcvID=request.getParameter("id");
			String rcvkor=request.getParameter("kor");
			String rcveng=request.getParameter("eng");
			String rcvmath=request.getParameter("math");
			
			
		int kor=Integer.parseInt(rcvkor);
	    int eng=Integer.parseInt(rcveng);
		int math=Integer.parseInt(rcvmath);
		
		int sum=kor+eng+math;
		double avg=sum/3.0;
		
		//수우미양가
		String grade=null;
		if(sum>=90){
			grade="수";
		}
		else if(sum>=80){
			grade="우";
		}
		else if(sum>=70){
			grade="미";
		}
		else if(sum>=60){
			grade="양";
		}
		else if(sum>=50){
			grade="가";
		}
	%>


	<table border="1">
		<tr>
			<td>ID</td>
			<td><%=rcvID%></td>
		</tr>
		<tr>
			<td>korscore</td>
			<td><%=kor%></td>
		</tr>
		<tr>
			<td>engscore</td>
			<td><%=eng%></td>
		</tr>
		<tr>
			<td>mathscore</td>
			<td><%=math%></td>
		</tr>
		<tr>
			<td>totalscore</td>
			<td><%=sum%></td>
		</tr>
		<tr>
			<td>average</td>
			<td><%=avg%></td>
		</tr>
		<tr>
			<td>grade</td>
			<td><%=grade%></td>
		</tr>




	</table>




</body>
</html>
