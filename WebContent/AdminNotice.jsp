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

	.out-div {
  		width : 500px;
  		height : 400px;
  		background-color: white;
  		position: absolute;
  		top: 30%;
  		left: 35%;
  		margin: -50px 0 0 -50px;
  		border-radius: 5%;
	}
	label{
		font-size: 20pt;
		font-style: italic;
		position: absolute;
  		top: 12%;
  		left: 32%;
	}
	#inputNotice{
		position: absolute;
  		top: 25%;
  		left: 20%;
  		width : 300px;
  		height : 170px;
  		border-radius: 5%;
  		font-size: 20pt;
	}
	#submit{
		font-size: 20pt;
		font-style: italic;
		position: absolute;
  		top: 75%;
  		left: 34%;
  		width : 160px;
  		height : 30px;
  		color: black;
  		font-size: 12pt;
  		
	}
	
</style>
</head>
<body>

<div class='out-div'>
	<label>공지사항 입력</label><p>
<form action = "AdminInsertNotice.jsp" method="get">
  	<input type="text" id="inputNotice" name="_inputNotice"><p>
  	<input type="submit" value="공지 등록" id="submit">
</form>
</div>
 
</body>
</html>
