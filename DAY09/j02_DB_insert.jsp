<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%@ page import="java.sql.*" %>


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<% 
		
		try{
			//1.DB 드라이버 로드
			Class.forName("oracle.jdbc.driver.OracleDriver");//OracleDriver를 정상적으로 작동하는지 확인작업
			System.out.println("#.1 JDBC 드라이버 Load 성공");
			
			//2.DB Connect
			String url="jdbc:oracle:thin:@192.168.10.56:1521:xe";
			String user="para";
			String password="para";
			
			Connection conn=DriverManager.getConnection(url, user, password);
			
			System.out.println("DB Connection완료");
			
			//3.SQL 명령
			//-저장 형식 : insert into 테이블이름 values(값1,값2....)
			//-t09_peo01 테이블 
			// num/name/age/reDate
		
			/* 1.sql 방법 1.
			String sql ="insert into t09_peo01 values(22,'임경호',10,sysdate)";
			PreparedStatement ps=conn.prepareStatement(sql); 
			*/
			//2.sql 방법 2.
			int n=2015;
			String n2="김수환무거북이와두루미";
			int n3=777;
			
			String sql ="insert into t09_peo01 values("+n+",'"+n2+"',"+n3+",sysdate)"; 
			PreparedStatement ps=conn.prepareStatement(sql); //pre는 사용자가 만든 스트링형식의 명령문을 실질적으로 명령효력을 부여함
			
			int res=ps.executeUpdate();
			
			if(res>0){
				System.out.println("성공");
				
			}else{
				System.out.println("실패");
				
			}
		
			//4. DB작업 후 연결 종료
			//http://ggari.tistory.com/91 단축기 이클립스 
			ps.close();
			conn.close();
		
			
		}catch(Exception e){
			
			e.printStackTrace();
			
		}
	
	
	
	%>
	
</body>
</html>
