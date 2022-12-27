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
		font-style: italic;
		position: absolute;
  		top: 8%;
  		left: 48%;
	}
	#notice{
		position: absolute;
  		top: 15%;
  		left: 18%;
  		width : 700px;
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
	#a{
	padding-left: 20px;
	}
	#b{
	padding-left: 90px;
	}
	
</style>
</head>
<body>

  <label>공지</label><p>
 <%
	try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/airplain?useUnicode=true&characterEncoding=utf8&zeroDateTimeBehavior=convertToNull&defaultFetchSize=1000&useSSL=false","root","1234");
		Statement stmt = conn.createStatement();
		ResultSet rs = stmt.executeQuery("select * from notice");
		out.println("<table id='notice'>");
		out.println("<tr><th>번호</th><th>공지내용</th><th>날짜</th></tr>");
		while(rs.next()){
			String id = rs.getString("id");
			String content = rs.getString("content");
			String ndate = rs.getString("ndate");
			
			out.println("<tr>");
		
			out.println("<td id='a'>"+id+"</td>");
			out.println("<td id='b'>"+content+"</td>");
			out.println("<td>"+ndate+"</td>");
	
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
