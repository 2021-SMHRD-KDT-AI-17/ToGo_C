<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
<title>휴게소 지도 SEARCH PAGE</title>
<script type="text/javascript"
	src="https://oapi.map.naver.com/openapi/v3/maps.js?ncpClientId=tzbwlpiic2"></script>
</head>
<body>
	<form onsubmit="">
		<input id="searchInput" type="text" placeholder="ex) oo휴게소 또는 지역">
		<button onclick="searchAddress()">주소검색</button>
		

		<div>
			<ul>
				<li>000 휴게소</li>
				<li>000 휴게소</li>
				<li>000 휴게소</li>
				<li>000 휴게소</li>
				<li>000 휴게소</li>
			</ul>
		</div>
	</form>

	<div id="map" style="width: 100%; height: 400px;"></div>

	<button onclick="getLocation()">현재 주소 위치 가져오기</button>
	<p id="demo"></p>
	<script src="https://code.jquery.com/jquery-3.4.1.js"></script>

	<script>

var x = document.getElementById("demo");
var lat;
var lng;

function getLocation() {  
  if (navigator.geolocation) {
    navigator.geolocation.getCurrentPosition(showPosition);    
  } else { 
    x.innerHTML = "Geolocation is not supported by this browser."; 
  }
}

function showPosition(position) {
  x.innerHTML = "Latitude: " + position.coords.latitude + 
  "<br>Longitude: " + position.coords.longitude;
  lat = position.coords.latitude;
  lng = position.coords.longitude;
  console.log("lat = " + lat);
  console.log("lng = " + lng);
}



var mapOptions = {
    center: new naver.maps.LatLng(37.3595704, 127.105399),
    zoom: 10
};

var map = new naver.maps.Map('map', mapOptions);
</script>
</body>
</html>