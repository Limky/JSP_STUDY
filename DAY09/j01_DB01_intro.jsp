<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

<!--
		1. 데이터 베이스 : 오라클
		2. 오라클 DB : WWW.oracle.com->oracle database 11g
			- 프로그램 설치 방법
				1. 압축파일 압축 풀기
				2. setup 파일 실행
				3. 관리자 계정인 system 아이디의 비밀번호 설정
					-설정 : oracle로 하겠다.
			- 사용 포트
				1. 1521
					- oracle database listener
					- .java 파일로부터 DB에 접근 할 때 사용되는 포트
				2. 8080
					- Oracle HTTP Listener
					- tomcat이 이미 사용중인 포트 번호이므로
						-충돌이 발생함
						=> 9090으로 변환해서 사용
					- 포튼 변경 방법
						1.'SQL 명령줄 실행'을 실행
						2. connect system 입력 후 enter
						3. 암호 입력란에 oracle 입력 후 enter
							(화면에 표시되지 않음)
						4. exec dbms_xdb.sethttpport(9090);
							입력 후 enter
						5. 포트 확인 방법:
							select dbms_xdb.gethttpport() from dual;
						6. exit 입력 후 enter(종료)
				3. 2030
					-oracle service for Microsoft transaction server
						
-->





</body>
</html>
