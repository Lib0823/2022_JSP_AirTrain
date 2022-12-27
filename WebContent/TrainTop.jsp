<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style>
	.menu{
  		display: flex;
	}
	h2{
		margin-left: 30px;
		margin-right: 100px;
		font-style: italic;
		font-size: 20pt;
	}
	h4{
		margin-left: 130px;
		text-decoration: underline;
		text-align: center;
		font-size: 15pt;
	}
</style>
</head>
<body scroll="no">
	
<div class="menu">
	<h2>Train</h2>
	
	<a href="TrainMain.jsp" target="_view"><h4>Home</h4></a>
	<a href="TrainTicket.jsp" target="_view"><h4>Ticket</h4></a>
	<a href="TotalNotice.jsp" target="_view"><h4>Notice</h4></a>
	<a href="MypageMain.jsp" target="_view"><h4>Mypage</h4></a>
	<a href="TotalLogin.jsp" target="_view"><h4>Login</h4></a>
	
	<h5><%= (String)session.getAttribute("__ID") %></h5>
</div>
			

	
</body>
</html>