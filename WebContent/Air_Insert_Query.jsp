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
	String aid = request.getParameter("aid");
	String aname = request.getParameter("aname");
	String adate = request.getParameter("adate");
	String atime = request.getParameter("atime");
	String astart = request.getParameter("astart");
	String aend = request.getParameter("aend");
	
		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/airplain?useUnicode=true&characterEncoding=utf8&zeroDateTimeBehavior=convertToNull&defaultFetchSize=1000&useSSL=false","root","1234");
			Statement stmt = conn.createStatement();
			stmt.executeUpdate("insert into airreserv(id, airid) values('"+id+"','"+aid+"')");
		stmt.close();
		conn.close();
		
		response.sendRedirect("AirSchedule.jsp");
	}catch(SQLException e){
		e.printStackTrace();
	}
%>
</body>
</html>