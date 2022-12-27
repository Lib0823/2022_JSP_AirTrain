<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("EUC-KR");
	String airid = request.getParameter("airid");
	String airline = request.getParameter("airline");
	String airday = request.getParameter("airday");
	String airtime = request.getParameter("airtime");
	String airdepart = request.getParameter("airdepart");
	String airdestination = request.getParameter("airdestination");
	
	try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/airplain?useUnicode=true&characterEncoding=utf8&zeroDateTimeBehavior=convertToNull&defaultFetchSize=1000&useSSL=false","root","1234");
		Statement stmt = conn.createStatement();
		stmt.executeUpdate("insert into airplain values('"+airid+"', '"+airline+"', '"+airday+"', '"+airtime+"', '"+airdepart+"', '"+airdestination+"')");

%>
		<script>
		alert("비행 스케줄을 등록하였습니다.");
		</script>
<%
		response.sendRedirect("AdminAir.jsp");
		stmt.close();
		conn.close();
	} catch(SQLException e) {
		e.printStackTrace();
	}
%>

</body>
</html>