<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"
    import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style type="text/css">
	body{
		background-color: skyblue;
	}
	.table {
    display: grid;
    width : 600px;
  	height : 300px;
  	background-color: white;
	position: absolute;
  	top: 35%;
  	left: 30%;
  	margin: -50px 0 0 -50px;
  	border-radius: 5%;
}
.title {
    text-align: center;
    font-weight: solid;
    font-size: 28px;
    font-style: italic;
    
}

.row {
    display: table-row;
}
.cell {
    display: table-cell;
    padding-left: 50px;
    padding-right: 10px;
    width: 50%;
    text-align: left;
    position: relative;
  	top: -7%;
  	left: 60%;
}
	
</style>
</head>
<body>
<%
	request.setCharacterEncoding("EUC-KR");

	 String id = (String)session.getAttribute("__ID");
	try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/airplain?useUnicode=true&characterEncoding=utf8&zeroDateTimeBehavior=convertToNull&defaultFetchSize=1000&useSSL=false","root","1234");
		Statement stmt = conn.createStatement();
		
		ResultSet rs = stmt.executeQuery("select * from user where id='"+ id +"'"); 
		rs.next();
		String name = rs.getString("name");
		String phone = rs.getString("phone");
%>

<div class="table">
	<div class="title">
		<p>나의 기본정보</p>
	</div>
 
	<div class="row">
		<div class="cell">
			<p>이름</p>
		</div>
		<div class="cell">
			<p><%= name %></p>
		</div>
	</div>
	
		<div class="row">
		<div class="cell">
			<p>전화번호</p>
		</div>
		<div class="cell">
			<p><%= phone %></p>
		</div>
	</div>
 
 	<div class="row">
		<div class="cell">
			<p>아이디</p>
		</div>
		<div class="cell">
			<p><%= (String)session.getAttribute("__ID") %></p>
		</div>
	</div>
 
	<div class="row">
		<div class="cell">
			<p>비밀번호</p>
		</div>
		<div class="cell">
			<p>**********</p>
		</div>
	</div>
</div>		

<%		
		stmt.close();
		conn.close();
	
	}catch(SQLException e){
		e.printStackTrace();
	}
	
%>

</body>
</html>
