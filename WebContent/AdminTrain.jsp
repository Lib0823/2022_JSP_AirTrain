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
  		width : 850px;
  		height : 350px;
  		background-color: white;
  		position: absolute;
  		top: 35%;
  		left: 20%;
  		margin: -50px 0 0 -50px;
  		border-radius: 5%;
	}
	label{
		font-size: 10pt;
		font-style: italic;
		position: absolute;
  		top: 15%;
  		left: 41%;
	}
	#title{
		font-size: 15pt;
		left: 38%;
	}
	#lbl1{
		position: absolute;
  		top: 35%;
  		left: 6%;
  		width : 250px;
  		height : 25px;
  		border-radius: 5%;
	}
	#lbl2{
		position: absolute;
  		top: 35%;
  		left: 23%;
  		width : 250px;
  		height : 25px;
  		border-radius: 5%;
	}
	#lbl3{
		position: absolute;
  		top: 35%;
  		left: 37%;
  		width : 250px;
  		height : 25px;
  		border-radius: 5%;
	}
	#lbl4{
		position: absolute;
  		top: 35%;
  		left: 67%;
  		width : 250px;
  		height : 25px;
  		border-radius: 5%;
	}
	#lbl5{
		position: absolute;
  		top: 35%;
  		left: 80%;
  		width : 250px;
  		height : 25px;
  		border-radius: 5%;
	}
	#lbl6{
		position: absolute;
  		top: 35%;
  		left: 53%;
  		width : 250px;
  		height : 25px;
  		border-radius: 5%;
	}
	#input1{
		position: absolute;
  		top: 45%;
  		left: 6%;
  		width : 130px;
  		height : 25px;
  		border-radius: 5%;
	}
	#input2{
		position: absolute;
  		top: 45%;
  		left: 23%;
  		width : 100px;
  		height : 25px;
  		border-radius: 5%;
	}
	#input3{
		position: absolute;
  		top: 45%;
  		left: 37%;
  		width : 120px;
  		height : 25px;
  		border-radius: 5%;
	}
	#input4{
		position: absolute;
  		top: 45%;
  		left: 67%;
  		width : 100px;
  		height : 25px;
  		border-radius: 5%;
	}
	#input5{
		position: absolute;
  		top: 45%;
  		left: 80%;
  		width : 100px;
  		height : 25px;
  		border-radius: 5%;
	}
	#input6{
		position: absolute;
  		top: 45%;
  		left: 53%;
  		width : 100px;
  		height : 25px;
  		border-radius: 5%;
	}
	#btn{
		position: absolute;
  		top: 68%;
  		left: 33%;
  		width : 250px;
  		height : 30px;
  		background-color: LightGrey;
  		border: solid 1px black;
	}
	
	
</style>
</head>
<body>

	<!-- 값을 DB에 저장하고 메인페이지로 이동시킴 -->
<form action="AdminInsertTra.jsp" method="post">	
  <div class='out-div'>
  	<label id="title">기차 스케줄 관리</label><p>
  	<label id="lbl1">기차 번호</label><label id="lbl2">기차종류</label><label id="lbl3">날짜</label><label id="lbl6">시간</label><label id="lbl4">출발지</label><label id="lbl5">도착지</label><p>
  	<input type="text" id="input1" name="traid">
  	<input type="text" id="input2" name="traline">
  	<input type="text" id="input3" name="traday">
  	<input type="text" id="input6" name="tratime">
  	<input type="text" id="input4" name="tradepart">
  	<input type="text" id="input5" name="tradestination"><p>
  	<input type="submit" value="등록" id="btn">
  </div>
</form>
	
</body>
</html>