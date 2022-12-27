<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style type="text/css">
	table{
	position: relative;
	left:200px;
	top:100px;
	}
	
</style>
</head>
<body>
<%
	
	String userId = (String)session.getAttribute("__ID");
	try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/airplain?useUnicode=true&characterEncoding=utf8&zeroDateTimeBehavior=convertToNull&defaultFetchSize=1000&useSSL=false","root","1234");
		Statement stmt = conn.createStatement();
		ResultSet rs = stmt.executeQuery("select * from airreserv where id='"+ userId +"'");
		
		while(rs.next()) {
			%>
			<table border="1" bordercolor="" width ="500" height="100" >
    		<tr bgcolor="" align ="center">
			<p><td colspan = "4" span style="color:black" align="left">비행기 예매 현황</td></p>
    		</tr>
			<%
			String airnum  = rs.getString("airnum");
			String id = rs.getString("id");
			String airid = rs.getString("airid");
			out.println("<tr>");
			out.println("<td>예약번호</td>");
			out.println("<td>"+ airnum +"</td>");
			out.println("<td>아이디</td>");
			out.println("<td>"+ id +"</td>");
			out.println("</tr>");
			out.println("<tr>");
			out.println("<td>항공기번호</td>");
			out.println("<td>"+ airid +"</td>");
			out.println("</tr>");
			out.println("</table>");
		}
		
	} catch(SQLException e) {
		
	}
%>
</body>
</html>