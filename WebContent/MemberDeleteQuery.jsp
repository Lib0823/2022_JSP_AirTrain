<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>회원정보 삭제 </h1>
<%
	request.setCharacterEncoding("EUC-KR");
	String id = request.getParameter("_id");
	
	try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/airplain?useUnicode=true&characterEncoding=utf8&zeroDateTimeBehavior=convertToNull&defaultFetchSize=1000&useSSL=false","root","1234");
		Statement stmt = conn.createStatement();
		stmt.executeUpdate("Delete from user where id='"+id+"'");
		out.println("<p>ID :"+id);
		out.println("<h1>회원정보 삭제가 완료되었습니다.</h1>");
		
		session.invalidate();
		stmt.close();
		conn.close();
	}catch(SQLException e){
		e.printStackTrace();
	}
%>

</body>
</html>