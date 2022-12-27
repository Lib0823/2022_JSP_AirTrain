<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.sql.*"%>
    <%@ page import = "encryption.Encrypt" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("EUC-KR");
	String id = request.getParameter("_id");
	String rawPw = request.getParameter("_pw");
	String pw = Encrypt.encodeSha256(rawPw);	// Encrypt클래스의 encodeSha256()호출
	String name = request.getParameter("_name");
	String phone = request.getParameter("_phone");
	
	try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/airplain?useUnicode=true&characterEncoding=utf8&zeroDateTimeBehavior=convertToNull&defaultFetchSize=1000&useSSL=false", "root", "1234");
		Statement stmt = conn.createStatement();
		stmt.executeUpdate("insert into user values('"+id+"','"+pw+"','"+name+"','"+phone+"')");
%>
		<script>
		alert("회원가입 성공.");
		</script>
<%
		response.sendRedirect("Login.jsp");
		stmt.close();
		conn.close();
	} catch(SQLException e) {
		e.printStackTrace();
	}
%>

</body>
</html>