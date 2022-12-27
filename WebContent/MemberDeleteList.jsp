<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>회원정보 삭제</h1>
현재 사용자의 ID : <%= (String)session.getAttribute("__ID") %>
<%
	try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/airtrain", "root", "1122");
		Statement stmt = conn.createStatement();
		ResultSet rs = stmt.executeQuery("select * from member");
		%>
		<table border="1">
		<tr>
			<th width=100>ID</th>	 <th width=100>암호</th> <th width=100>성명</th>
		</tr>
		<%
		while(rs.next()) {
			String id = rs.getString("id");
			String pw = rs.getString("pw");
			String name = rs.getString("name");
			out.println("<tr>");
			out.println("<td><a href='Member_Delete_UI.jsp?_id="+id+"&_pw="+pw+"&_name="+name+"'>"+ id +"</a></td>");
			out.println("<td>"+ pw +"</td>");
			out.println("<td>"+ name +"</td>");
			out.println("</tr>");
		}
		%>
		</table>
		<%
	} catch(SQLException e) {
		
	}
%>

</body>
</html>