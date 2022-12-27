<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"
    import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style>
	body{
		background-color: skyblue;
	}

	label{
		font-size: 20pt;
		font-style: bold;
		position: absolute;
  		top: 15%;
  		left: 48%;
	}
	#notice{
		position: absolute;
  		top: 20%;
  		left: 25%;
  		width : 600px;
  		
  		border-radius: 1%;
  		background-color: white;
	border-top: 1px solid #444444;
    border-collapse: collapse;
	}
	th {
		background-color: navy;
		color: white;
	}
	td {
    	border-bottom: 1px solid #444444;
    	padding: 5px;
    }
	#pw{
		position: absolute;
  		top: 50%;
  		left: 20%;
  		width : 250px;
  		height : 25px;
  		border-radius: 5%;
	}
	#btn{
		position: absolute;
  		top: 67%;
  		left: 21%;
  		width : 250px;
  		height : 27px;
  		background-color: LightGrey;
  		border: solid 1px black;
	}
	
</style>
</head>
<body>

  <label>회원목록</label><p>
 <%
	try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/airplain?useUnicode=true&characterEncoding=utf8&zeroDateTimeBehavior=convertToNull&defaultFetchSize=1000&useSSL=false","root","1234");
		Statement stmt = conn.createStatement();
		ResultSet rs = stmt.executeQuery("select * from user");
		out.println("<table border=1 id='notice'>");
		out.println("<tr><th>ID</th><th>이름</th><th>전화번호</th></tr>");
		while(rs.next()){
			String id = rs.getString("id");
			String name = rs.getString("name");
			String phone = rs.getString("phone");
			
			out.println("<tr>");
		
			out.println("<td>"+id+"</td>");
			out.println("<td>"+name+"</td>");
			out.println("<td>"+phone+"</td>");
	
			out.println("<tr>");
		}
		out.println("</table>");
		
		rs.close();
		stmt.close();
		conn.close();
		
	}catch(SQLException e){
		e.printStackTrace();
	}
%>

	
</body>
</html>
