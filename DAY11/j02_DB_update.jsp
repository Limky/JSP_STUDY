<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>


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

	String sql="update t11_loginfo set name='고영욱'"; //where 조건문으로 특정 부분 수정가능함 여기서는 안쓰여있음.
	PreparedStatement ps = conn.prepareStatement(sql);
	
	int res = ps.executeUpdate();
	
	if(res>0){
		msg="수정이 완료되었습니다.";
		System.out.println(res);
		
	}else{
		msg="수정실패";
		
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
