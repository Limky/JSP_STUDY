<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>

<%@ page import="java.sql.*" %>
<%@ page import="dto.J01_Log" %>
<%@ page import="java.util.*" %>


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	
	<%
		ArrayList<J01_Log> list =new ArrayList();
	
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			System.out.println("로드 성공");
			
			String url="jdbc:oracle:thin:@192.168.10.56:1521:xe";
			
			String user="para";
			String password="para";
			
			Connection conn=DriverManager.getConnection(url,user,password);
			System.out.println("연결 성공");
	
			String sql="select * from t11_loginfo order by num desc";
			PreparedStatement ps = conn.prepareStatement(sql);//스트링을 실행가능한 형태로 sql명령문으로 바꿔주고 prepare형태의 객체로 던져준다			
			
			ResultSet rs = ps.executeQuery();
			
		
			while(rs.next()){
				
				J01_Log data = new J01_Log();
				data.setNum(rs.getInt("num"));
				data.setName(rs.getString("name"));
				data.setId(rs.getString("id"));
				data.setPw(rs.getString("pw"));
				data.setRegDate(rs.getDate("regdate"));
				
				list.add(data);	
			}
			
			rs.close();
			ps.close();
			conn.close();
			
			
		}catch(Exception e){
			e.printStackTrace();
			
		}		
	%>
	<%-- <%=list %> --%>
	
<%-- 	<%
		for(J01_Log each:list){
	%>
		번호:<%=each.getNum()%>
		이름:<%=each.getName()%>
		ID:<%=each.getId() %>
		pw:<%=each.getPw() %>
		등록날짜:<%=each.getRegDate()%><br/><br/>
	<%
		}
	%> --%>
	
	<table border="1">
	
		<tr>
			<td>번호</td>
			<td>ID</td>
			<td>PW</td>
			<td>이름</td>
			<td>등록날짜</td>
			
		</tr>


	<%
		for(J01_Log each:list){	
	%>
	<tr>
		<td><%=each.getNum() %></td>
		<td><%=each.getId() %></td>
		<td><%=each.getPw() %></td>
		<td><%=each.getName() %></td>
		<td><%=each.getRegDate() %></td>
	</tr>
	
	<% 
		}
	%>
	
	</table>	
	


</body>
</html>



<!--------------------------------------클래스부분------------------------------------------->


package dto;

import java.util.Date;

public class J01_Log {

	int num;
	String id;
	String pw;
	String name;
	Date regDate;
	
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	
	
	
	
}

