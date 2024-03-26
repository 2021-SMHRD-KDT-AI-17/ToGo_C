<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
<title>Insert title here</title>


<!-- 지도 api 스크립트 부분 -->
<script type="text/javascript"
	src="https://oapi.map.naver.com/openapi/v3/maps.js?ncpClientId=tzbwlpiic2"></script>

<!--
      CSS
      ============================================= -->
<link rel="stylesheet" href="resources/assets/css/linearicons.css">
<link rel="stylesheet" href="resources/assets/css/font-awesome.min.css">
<link rel="stylesheet" href="resources/assets/css/themify-icons.css">
<link rel="stylesheet" href="resources/assets/css/bootstrap.css">
<link rel="stylesheet" href="resources/assets/css/owl.carousel.css">
<link rel="stylesheet" href="resources/assets/css/nice-select.css">
<link rel="stylesheet" href="resources/assets/css/nouislider.min.css">
<link rel="stylesheet" href="resources/assets/css/ion.rangeSlider.css" />
<link rel="stylesheet"
	href="resources/assets/css/ion.rangeSlider.skinFlat.css" />
<link rel="stylesheet" href="resources/assets/css/magnific-popup.css">
<link rel="stylesheet" href="resources/assets/css/main.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">

<style>
.search-box {
	height: 400px;
	width: 100%;
	margin-top: 150px;
	top: 150px;
	border: 1px solid black;
}

.search-result {
	overflow: scroll;
	width: 100%;
	height: 100%;
	padding: 10px;
}

h3, p {
	text-align: center;
	padding: 10px;
	margin-bottom: 0px;
}

li {
	display: list-item;
}

input {
	height: 38px;
	width: 400px;
}

.search-box {
	height: 600px;
}

.search-result-list {
	border-bottom: 1px solid #ddd;
	height: 100px;
	position: relative;
}

.search-box-title {
	background: #333300;
	color: white;
	font-weight: 800px;
}

.search-input {
	display: flex;
	justify-content: space-around;
	padding: 10px;
	background: #E9E7E8;
}

#searchInput {
	width: 250px;
}

.search-result-box {
	overflow-y: scroll;
	height: 400px;
}

.result-details {
	text-align: left;
}

.search-count {
	height: 30px;
	background: #F5F0C5;
	font-size: 14px;
}

.map-box {
	margin-top: 10px;
}

.my-location {
	width: 50px;
	height: 50px;
}
</style>

</head>
<body>


	<!-- Start Header Area -->

	<%@include file="./includes/header.jsp"%>

	<!-- End Header Area -->

	<div class="container">
		<div class="search-box">
			<div class="search-box-title">
				<h3>매장 찾기</h3>
			</div>

			<div class="search-box-subtitle">
				<p>퀵 검색</p>
			</div>
			<div class="search-input">
				<form onsubmit="">

					<input id="searchInput" type="text" placeholder="ex) oo휴게소 또는 지역">
					<button type="button" class="btn btn-success"
						onclick="getAddress()">주소 검색</button>

				</form>

			</div>

			<div class="search-count">(검색 결과 "00"개)</div>

			<div class="search-result-box">
				<ul class="search-result-list" id="service_area_list">
					<li class="search-result-list"><strong>송림 휴게소</strong>
						<p class="result-details">
							"광주광역시 남구 진월동 499-68" <br> "062-673-7745"
						</p></li>
					<li class="search-result-list"><strong>안디옥 휴게소</strong>
						<p class="result-details">
							"광주광역시 서구 쌍촌동 번지 1층 888-2" <br> "062-672-1231"
						</p></li>
					<li class="search-result-list"><strong>금곡 휴게소</strong>
						<p class="result-details">
							"금곡동 178-1번지 북구 광주광역시" <br> "062-266-3302"
						</p></li>
					<li class="search-result-list"><strong>서울 휴게소</strong>
						<p class="result-details">
							"서울시 강동구 명일동 롯데캐슬퍼스트" <br> "02-1111-2222"
						</p></li>
					<li class="search-result-list"><strong>서울 휴게소</strong>
						<p class="result-details">
							"서울시 강동구 명일동 롯데캐슬퍼스트" <br> "02-1111-2222"
						</p></li>


				</ul>
			</div>

		</div>

		<section class="map-box">
			<div id="map"
				style="width: 100%; height: 500px; margin-bottom: 100px"></div>
			<div>
				<i class="fa-solid fa-street-view my-location"></i>
			</div>
		</section>

	</div>




	<!-- start footer Area -->

	<%@include file="./includes/footer.jsp"%>
	<%List<Service_areas> area_list =(List<Service_areas>)session.getAttribute("area_list"); %>
	<!-- End footer Area -->

	<script type="text/javascript">
		let lat = [];
		let lng = [];

		// 간단한 지도!! //zoom , width, height =>> 수정
		var map = new naver.maps.Map('map', {
			center : new naver.maps.LatLng(37.3595704, 127.105399), //지도의 초기 중심 좌표
			zoom : 17, //지도의 초기 줌 레벨
			minZoom : 8, //지도의 최소 줌 레벨
			zoomControl : true, //줌 컨트롤의 표시 여부
			zoomControlOptions : { //줌 컨트롤의 옵션
				position : naver.maps.Position.TOP_RIGHT
			}
		}); //new naver.maps.Map(mapDiv, mapOptions)

		/*  for (let i = 1; i < ${area_list}.length; i++){
		 	var marker = new naver.maps.Marker({
		         position: new naver.maps.LatLng(${area_list[i].getLat}, ${area_list[i].getLng}),
		         map: map
		 } */

		// JSON 형식의 문자열을 JavaScript 객체로 파싱

		// JavaScript 객체 확인
		console.log(area_list);
		{
			area_list
		};
		console.log(area_list);
		/*  var area_list = new Gson().toJson(area_list);
		 console.log(area_list); */
		var marker = new naver.maps.Marker({
			position : new naver.maps.LatLng(37.3595704, 127.105399),
			map : map
		});
	</script>



	<script src="https://code.jquery.com/jquery-3.4.1.js"></script>

	<script src="resources/assets/js/vender/jquery-2.2.4.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"
		integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4"
		crossorigin="anonymous"></script>
	<script src="resources/assets/js/vender/bootstrap.min.js"></script>
	<script src="resources/assets/js/jquery.ajaxchimp.min.js"></script>
	<script src="resources/assets/js/jquery.nice-select.min.js"></script>
	<script src="resources/assets/js/jquery.sticky.js"></script>
	<script src="resources/assets/js/nouislider.min.js"></script>
	<script src="resources/assets/js/jquery.magnific-popup.min.js"></script>
	<script src="resources/assets/js/owl.carousel.min.js"></script>
	<!--gmaps Js-->
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCjCGmQ0Uq4exrzdcL6rvxywDDOvfAu6eE"></script>
	<script src="resources/assets/js/gmaps.min.js"></script>
	<script src="resources/assets/js/main.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
		crossorigin="anonymous"></script>
	<script src="https://kit.fontawesome.com/d97bdf4abd.js"
		crossorigin="anonymous"></script>
	<script src="./jquery-3.7.1.min.js"></script>
</body>
</html>