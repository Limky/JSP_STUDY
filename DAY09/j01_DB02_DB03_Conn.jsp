<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<!--
	
		DB 연동하기 
		
		1. 필요 파일 다운로드 및 저장
			-프로그램이 DB와 연동하기 위한 기능을 제공하는
				드라이버 파일이 필요
			-www.oracle.com -> ojdbc6.jar 파일
			-저장 위치: 이클립스 -> Webcontent -> WEB_INF ->lib
			-저장 후 서버 재가동해야 함
			
		2. DB 연동 과정
			1. Driver 로드 
				- ojdbc 드라이버를 로드하는 작업
				- 1단계 성공은 DB 연결 작업 준비 완료
			
			2. DB 접속 
				- 총 3가지 정보가 필요
					url / user /password
				- url : DB가 위치한 정보
					오라클의 경우 URL 형식
					jdbc:oracle:thin:@DB서버ip:1521:xe;
					
					참고 : 버전 별 DB 이름 
					-Enterprice(기업용) : orcl
					-Express(개인용) :xe
					
				-user : 해당 계정 -para
				-password : 계정의 비밀번호 -para
				
				-2단계 성공은 DB에 실제 접속을 완료한 상태
					(DB에 명령이 가능함 - 저장,수정,보기,삭제)

			3. 명령
				- 수행할 명령을 String 형식으로 작성한 후
					전송하여 실행시킨다.
					(String 형식으로 작성된 명령문을 SQL문이라고 한다.)
					
				
	-->
</body>
</html>



<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	
	<%-- 
		DB 테이블 만들기
		
		1. 브라우저 형식
			- 스크린샷 참조
			- 참고 : varchar2 크기
					Enterprise - 한글 : 2byte
					Express    - 한글 : 3byte
	
	
	
	--%>



</body>
</html>
