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
	String notice = request.getParameter("_inputNotice");
	
	try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/airplain?useUnicode=true&characterEncoding=utf8&zeroDateTimeBehavior=convertToNull&defaultFetchSize=1000&useSSL=false","root","1234");
		Statement stmt = conn.createStatement();
		stmt.executeUpdate("insert into notice(content) values('"+notice+"')");

%>
		<script>
		alert("공지를 등록하였습니다.");
		</script>
<%
		response.sendRedirect("AdminNotice.jsp");
		stmt.close();
		conn.close();
	} catch(SQLException e) {
		e.printStackTrace();
	}
%>

</body>
</html>