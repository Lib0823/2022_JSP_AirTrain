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
  		width : 500px;
  		height : 500px;
  		background-color: white;
  		position: absolute;
  		top: 20%;
  		left: 35%;
  		margin: -50px 0 0 -50px;
  		border-radius: 5%;
	}
	label{
		font-size: 20pt;
		font-style: italic;
		position: absolute;
  		top: 10%;
  		left: 40%;
	}
	#id{
		position: absolute;
  		top: 25%;
  		left: 25%;
  		width : 250px;
  		height : 25px;
  		border-radius: 5%;
	}
	#pw{
		position: absolute;
  		top: 35%;
  		left: 25%;
  		width : 250px;
  		height : 25px;
  		border-radius: 5%;
	}
	#name{
		position: absolute;
  		top: 45%;
  		left: 25%;
  		width : 250px;
  		height : 25px;
  		border-radius: 5%;
	}
	#phone{
		position: absolute;
  		top: 55%;
  		left: 25%;
  		width : 250px;
  		height : 25px;
  		border-radius: 5%;
	}
	#btn{
		position: absolute;
  		top: 70%;
  		left: 26%;
  		width : 250px;
  		height : 27px;
  		background-color: LightGrey;
  		border: solid 1px black;
	}
	
</style>
</head>
<body>

	<!-- ���� DB�� �����ϰ� �α����������� �̵���Ŵ -->
<form action="SignupCheck.jsp" method="post">	
  <div class='out-div'>
  	<label>ȸ������</label><p>
  	<input type="text" name="_id" placeholder="ID" id="id"><p>
  	<input type="password" name="_pw" placeholder="Password" id="pw"><p>
  	<input type="text" name="_name" placeholder="�̸�" id="name"><p>
  	<input type="text" name="_phone" placeholder="��ȭ��ȣ" id="phone"><p>
  	<input type="submit" value="SignUp" id="btn">
  </div>
</form>
	
</body>
</html>