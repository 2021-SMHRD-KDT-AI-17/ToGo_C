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
<button onclick="getLocation()">현재 주소 위치 가져오기</button>
	<div id="map" style="width: 100%; height: 400px;"></div>

	
	<p id="demo"></p>
	<script src="resources/assets/js/vender/jquery-2.2.4.min.js"></script>
	<script src="https://code.jquery.com/jquery-3.4.1.js"></script>

	<script>


		var x = document.getElementById("demo");
		var lat_now;
		var lng_now;
		let total_rest = [];
        let rest_list = [];
		

		function getLocation() {
			if (navigator.geolocation) {
				navigator.geolocation.getCurrentPosition(showPosition);
			} else {
				x.innerHTML = "Geolocation is not supported by this browser.";
			}
		}

		function showPosition(position) {
			x.innerHTML = "Latitude: " + position.coords.latitude
					+ "<br>Longitude: " + position.coords.longitude;
			lat_now = position.coords.latitude;
			lng_now = position.coords.longitude;
			console.log("lat = " + lat_now);
			console.log("lng = " + lng_now);
		}

		  // 간단한 지도!! //zoom , width, height =>> 수정
        var map = new naver.maps.Map('map', {
            center: new naver.maps.LatLng(35.2779101, 128.71538), //지도의 초기 중심 좌표
            zoom: 17, //지도의 초기 줌 레벨
            minZoom: 8, //지도의 최소 줌 레벨
            zoomControl: true, //줌 컨트롤의 표시 여부
            zoomControlOptions: { //줌 컨트롤의 옵션
                position: naver.maps.Position.TOP_RIGHT
            }
        });  //new naver.maps.Map(mapDiv, mapOptions)

		var map = new naver.maps.Map('map', mapOptions);
	</script>
</body>
</html>