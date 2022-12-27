<!-- 첫번째 페이지_기차/비행기 홈으로 연결 -->

<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style>
	body{
		background-color: #acc1d3;
	}
	h1{
		text-align: center;
		font-style: italic;
	}
	#airButton{
		float: top;
		width: 100%;
		height: 400px;
		object-fit: cover;
		margin: 0;
	}
	#trainButton{
		float: bottom;
		width: 100%;
		height: 400px;
		object-fit: cover;
		margin: 0;
	}
	#notice{
		width: 100%;
		height: 20px;
		background-color: white;
	}
	label{
		font-size: 10pt;
		
	}
	

</style>
</head>
<body onresize="parent.resizeTo(500,400)" onload="parent.resizeTo(500,400)">

	
	<h1>AirTrain</h1>
		
	 <a href="AirHome.jsp"><img src="lib/air.jpg" id="airButton" alt="Airplain"></a>
	 <a href="TrainHome.jsp"><img src="lib/train.jpg" id="trainButton" alt="Train"></a>
	 
</body>
</html>









