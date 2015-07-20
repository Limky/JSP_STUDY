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
		String msg=null;
		try{
	
		Class.forName("oracle.jdbc.driver.OracleDriver");
		System.out.println("로드 성공");
		
		String url="jdbc:oracle:thin:@192.168.10.56:1521:xe";
		String user="para";
		String password="para";
		
		Connection conn = DriverManager.getConnection(url,user,password);
		System.out.println("연결 성공");
		
		String sql="delete t11_loginfo where num=22";
		PreparedStatement ps=conn.prepareStatement(sql);
		
		int res = ps.executeUpdate();
		
		if(res>0){
			
			msg="삭제 완료";
			
			
		}else{
			
			msg="삭제 실패";
			
		}
		
		ps.close();
		conn.close();
		}
		
		catch(Exception e){
			e.printStackTrace();
			
		}

	
	%>
	
	<script type="text/javascript">
	alert("<%= msg %>");
	</script>


</body>
</html>
