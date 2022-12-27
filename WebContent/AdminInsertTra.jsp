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
	String traid = request.getParameter("traid");
	String traline = request.getParameter("traline");
	String traday = request.getParameter("traday");
	String tratime = request.getParameter("tratime");
	String tradepart = request.getParameter("tradepart");
	String tradestination = request.getParameter("tradestination");
	
	try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/airplain", "root", "1234");
		Statement stmt = conn.createStatement();
		stmt.executeUpdate("insert into train values('"+traid+"', '"+traline+"', '"+traday+"', '"+tratime+"', '"+tradepart+"', '"+tradestination+"')");

%>
		<script>
		alert("기차 스케줄을 등록하였습니다.");
		</script>
<%
		response.sendRedirect("AdminTrain.jsp");
		stmt.close();
		conn.close();
	} catch(SQLException e) {
		e.printStackTrace();
	}
%>

</body>
</html>