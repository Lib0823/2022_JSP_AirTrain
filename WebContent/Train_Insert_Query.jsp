<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import = "java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<% String id = (String)session.getAttribute("__ID"); %>
<%
	request.setCharacterEncoding("EUC-KR");
	String tid = request.getParameter("tid");
	String tname = request.getParameter("tname");
	String tdate = request.getParameter("tdate");
	String ttime = request.getParameter("ttime");
	String tstart = request.getParameter("tstart");
	String tend = request.getParameter("tend");
	
		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/airplain?useUnicode=true&characterEncoding=utf8&zeroDateTimeBehavior=convertToNull&defaultFetchSize=1000&useSSL=false","root","1234");
			Statement stmt = conn.createStatement();
			stmt.executeUpdate("insert into trareserv(id, traid) values('"+id+"','"+tid+"')");
		stmt.close();
		conn.close();
		
		response.sendRedirect("TrainSchedule.jsp");
	}catch(SQLException e){
		e.printStackTrace();
	}
%>
</body>
</html>