<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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
  		width : 400px;
  		height : 300px;
  		background-color: white;
  		position: absolute;
  		top: 35%;
  		left: 40%;
  		margin: -50px 0 0 -50px;
  		border-radius: 5%;
	}
	label{
		font-size: 20pt;
		font-style: italic;
		position: absolute;
  		top: 15%;
  		left: 41%;
	}
	#id{
		position: absolute;
  		top: 35%;
  		left: 20%;
  		width : 250px;
  		height : 25px;
  		border-radius: 5%;
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

	<!-- 값을 DB에 저장하고 메인페이지로 이동시킴 -->
<form action="LoginCheck.jsp" method="post">	
  <div class='out-div'>
  	<label>로그인</label><p>
  	<input type="text" name="_id" placeholder="ID" id="id"><p>
  	<input type="password" name="_pw" placeholder="Password" id="pw"><p>
  	<input type="submit" value="Login" id="btn">
  </div>
</form>
	
</body>
</html>