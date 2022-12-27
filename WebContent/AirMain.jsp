<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"
    import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>AirplainMain</title>
<style>
	body{
		height: 100vh;
        width: 100vw;
		background-image: url('lib/airplainBack2.jpg');
		background-size: cover;
		background-repeat: no-repeat;
		-ms-overflow-style: none;
	}
	#notice{
		font-size: 13pt;
	}
	p{
		margin-left: 5px;
	}
	img{
		float: right;
	}
	#map{
		position: absolute;
		left: 20px;
		top: 50px;
	}
	#select{
		position: absolute;
		left: 20px;
		top: 20px;
	}
	#introimg{
		position: absolute;
		right: 20px;
		top: 20px;
	}
	#airport{
		font-size: 10pt;
		width: 200px;
	}
	#searchLbl{
		font-size: 13pt;
	}
</style>

<script type="text/javascript">
  var imgArray=new Array();
  imgArray[0]="lib/air1.jpg";
  imgArray[1]="lib/air2.jpg";
  imgArray[2]="lib/air3.jpg";
  imgArray[3]="lib/air4.jpg";
  imgArray[4]="lib/air5.jpg";
  imgArray[5]="lib/air6.jpg";
  imgArray[6]="lib/air7.jpg";
  var num= 0;
  
  function showImage(){
   //var imgNum=Math.round(Math.random()*3);
   if(num>=7){
	   num = 0;
   }
   var objImg=document.getElementById("introimg");
   objImg.src=imgArray[num];
   setTimeout(showImage,5000);
   num++;
  }

 </script>

</head>
<body onload="showImage()">

	<!-- 지도 -->
	<div id="map" style="width:600px;height:400px;"></div>

	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=d973f6912184e79edb6d54433b1c35e2"></script>
	<script>
	var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
	    mapOption = { 
        	center: new kakao.maps.LatLng(37.4480158, 126.6575041), // 지도의 중심좌표
        	level: 9 // 지도의 확대 레벨
    	};

	// 지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
	var map = new kakao.maps.Map(mapContainer, mapOption); 
	
	// 마커가 표시될 위치입니다 
	var incheon  = new kakao.maps.LatLng(37.4692,126.451); 
	var gimpo = new kakao.maps.LatLng(37.5586545, 126.7944739);
	var jeju = new kakao.maps.LatLng(33.5113889, 126.493056);
	var gimhae = new kakao.maps.LatLng(35.17322, 128.9464591);
	var cheongju = new kakao.maps.LatLng(36.7166667, 127.499167);
	var daegu = new kakao.maps.LatLng(36.0803312, 126.6913277);
	var yangyang  = new kakao.maps.LatLng(38.0613889, 128.669167);
	
	
	// 마커를 생성합니다
	var i_marker = new kakao.maps.Marker({
	    position: incheon
	});
	var g_marker = new kakao.maps.Marker({
	    position: gimpo
	});
	var j_marker = new kakao.maps.Marker({
	    position: jeju
	});
	var h_marker = new kakao.maps.Marker({
	    position: gimhae
	});
	var c_marker = new kakao.maps.Marker({
	    position: cheongju
	});
	var d_marker = new kakao.maps.Marker({
	    position: daegu
	});
	var y_marker = new kakao.maps.Marker({
	    position: yangyang
	});
	
	
	// 마커가 지도 위에 표시되도록 설정합니다
	i_marker.setMap(map);
	g_marker.setMap(map);
	j_marker.setMap(map);
	h_marker.setMap(map);
	c_marker.setMap(map);
	d_marker.setMap(map);
	y_marker.setMap(map);
	
	// 마커를 클릭했을 때 마커 위에 표시할 인포윈도우를 생성합니다
	var i_iwContent = '<div style="padding:5px;"><h3>인천국제공항(ICN)</h3><p><a href=\'https://www.airport.kr/ap/ko/index.do#\'>https://www.airport.kr/ap/ko/index.do#</a></div>';
	    i_iwRemoveable = true;
	var g_iwContent = '<div style="padding:5px;"><h3>김포국제공항(GMP)</h3><p><a href=\'https://www.airport.co.kr/gimpo/index.do\'>https://www.airport.co.kr/gimpo/index.do</a></div>';
	    g_iwRemoveable = true;
	var j_iwContent = '<div style="padding:5px;"><h3>제주국제공항(CJU)</h3><p><a href=\'https://www.airport.co.kr/jeju/index.do\'>https://www.airport.co.kr/jeju/index.do</a></div>';
	    j_iwRemoveable = true;
	var h_iwContent = '<div style="padding:5px;"><h3>김해국제공항(PUS)</h3><p><a href=\'https://www.airport.co.kr/gimhae/index.do\'>https://www.airport.co.kr/gimhae/index.do</a></div>';
	    h_iwRemoveable = true;
	var c_iwContent = '<div style="padding:5px;"><h3>청주국제공항(CJJ)</h3><p><a href=\'https://www.airport.co.kr/cheongju/index.do\'>https://www.airport.co.kr/cheongju/index.do</a></div>';
	    c_iwRemoveable = true;
	var d_iwContent = '<div style="padding:5px;"><h3>대구국제공항(TAE)</h3><p><a href=\'https://www.airport.co.kr/daegu/index.do\'>https://www.airport.co.kr/daegu/index.do</a></div>';
	    d_iwRemoveable = true;
	var y_iwContent = '<div style="padding:5px;"><h3>양양국제공항(YNY)</h3><p><a href=\'https://www.airport.co.kr/yangyang/index.do\'>https://www.airport.co.kr/yangyang/index.do</a></div>';
	    y_iwRemoveable = true;

	// 인포윈도우를 생성합니다
	var i_infowindow = new kakao.maps.InfoWindow({
	    content : i_iwContent,
	    removable : i_iwRemoveable
	});
	var g_infowindow = new kakao.maps.InfoWindow({
	    content : g_iwContent,
	    removable : g_iwRemoveable
	});
	var j_infowindow = new kakao.maps.InfoWindow({
	    content : j_iwContent,
	    removable : j_iwRemoveable
	});
	var h_infowindow = new kakao.maps.InfoWindow({
	    content : h_iwContent,
	    removable : h_iwRemoveable
	});
	var c_infowindow = new kakao.maps.InfoWindow({
	    content : c_iwContent,
	    removable : c_iwRemoveable
	});
	var d_infowindow = new kakao.maps.InfoWindow({
	    content : d_iwContent,
	    removable : d_iwRemoveable
	});
	var y_infowindow = new kakao.maps.InfoWindow({
	    content : y_iwContent,
	    removable : y_iwRemoveable
	});

	// 마커에 클릭이벤트를 등록합니다
	kakao.maps.event.addListener(i_marker, 'click', function() {
	      i_infowindow.open(map, i_marker);  
	});
	kakao.maps.event.addListener(g_marker, 'click', function() {
	      g_infowindow.open(map, g_marker);  
	});
	kakao.maps.event.addListener(j_marker, 'click', function() {
	      j_infowindow.open(map, j_marker);  
	});
	kakao.maps.event.addListener(h_marker, 'click', function() {
	      h_infowindow.open(map, h_marker);  
	});
	kakao.maps.event.addListener(c_marker, 'click', function() {
	      c_infowindow.open(map, c_marker);  
	});
	kakao.maps.event.addListener(d_marker, 'click', function() {
	      d_infowindow.open(map, d_marker);  
	});
	kakao.maps.event.addListener(y_marker, 'click', function() {
	      y_infowindow.open(map, y_marker);  
	});
	

  	// select박스 변경 시 실행
  	function selectBoxChange(value){
  		if(value.equals("i")){
  			// 인천
  		    var moveLatLon = new kakao.maps.LatLng(37.4692, 126.451);  
  		}else if(value.equals("g")){
  			// 김포
  			var moveLatLon = new kakao.maps.LatLng(37.5586545, 126.7944739);
  		}else if(value.equals("j")){
  			// 제주
  			var moveLatLon = new kakao.maps.LatLng(33.5113889, 126.493056);
  		}else if(value.equals("h")){
  			// 김해
  			var moveLatLon = new kakao.maps.LatLng(35.17322, 128.9464591);
  		}else if(value.equals("c")){
  			// 청주
  			var moveLatLon = new kakao.maps.LatLng(36.7166667, 127.499167);
  		}else if(value.equals("d")){
  			// 대구
  			var moveLatLon = new kakao.maps.LatLng(36.0803312, 126.6913277);
  		}else if(value == 'y'){
  			// 양양
  			var moveLatLon = new kakao.maps.LatLng(38.0613889, 128.669167);
  			map.panTo(moveLatLon); 
  		}
  		var moveLatLon = new kakao.maps.LatLng(38.0613889, 128.669167);
  		map.panTo(moveLatLon); 
  	}
  	

  	function panTo(v) {
  	    // 이동할 위도 경도 위치를 생성합니다 
  		if(v=="i"){
  			// 인천
  		    var moveLatLon = new kakao.maps.LatLng(37.4692, 126.451);  
  		}else if(v=="g"){
  			// 김포
  			var moveLatLon = new kakao.maps.LatLng(37.5586545, 126.7944739);
  		}else if(v=="j"){
  			// 제주
  			var moveLatLon = new kakao.maps.LatLng(33.5113889, 126.493056);
  		}else if(v=="h"){
  			// 김해
  			var moveLatLon = new kakao.maps.LatLng(35.17322, 128.9464591);
  		}else if(v=="c"){
  			// 청주
  			var moveLatLon = new kakao.maps.LatLng(36.7166667, 127.499167);
  		}else if(v=="d"){
  			// 대구
  			var moveLatLon = new kakao.maps.LatLng(36.0803312, 126.6913277);
  		}else if(v=='y'){
  			// 양양
  			var moveLatLon = new kakao.maps.LatLng(38.0613889, 128.669167);
  		}
  	  map.panTo(moveLatLon);  
  	          
  	}      

  	
  	//selectBoxChange(this.value)
	</script>
	
	<!-- 광고 -->
 	<img id="introimg" border="0">
 	
 	<!-- 공항선택 -->
 	<div id="select">
 	<label id="searchLbl">공항 검색 : </label>
 	<select id="airport" onchange="panTo(this.value);">
 		<option value="i">인천국제공항</option>
 		<option value="g">김포국제공항</option>
 		<option value="j">제주국제공항</option>
 		<option value="h">김해국제공항</option>
 		<option value="c">청주국제공항</option>
 		<option value="d">대구국제공항</option>
 		<option value="y">양양국제공항</option>
 	</select>
  
 	</div>
	
</body>
</html>

















