<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%--
			회원가입 화면 작성<table,form 활용>
			-이름/나이/아이디/비밀번호 입력/비밀번호 확인 입력/
			이메일 입력/ 
			
			=>입력 후 전송

			=>비밀번호와 비밀번호 확인이 일치하지 않으면
			 	"비밀번호 불일치로 등록되지 않습니다."
			 	<이전 화면으로 이동>
	
			=>나이가 10살 이하이면 
				"청소년 할인 대상으로 등록되었습니다."
			=>나이가 10살 이하가 아니면
				"일반인 등록이 완료되었습니다."

	 --%>

	<form action="/Day03/J06_Quiz02.jsp">
		<table>
			<tr>
				<td>아이디</td>
				<td><input type="text" name="id" /></td>
			</tr>

			<tr>
				<td>나이</td>
				<td><input type="text" name="age" /></td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><input type="text" name="pw1" /></td>
			</tr>
			<tr>
				<td>비밀번호 확인</td>
				<td><input type="text" name="pw2" /></td>
			</tr>

			<tr>
				<td colspan="2"><input type="submit" value="전송하기" /></td>

			</tr>
		</table>
	</form>



</body>
</html>
