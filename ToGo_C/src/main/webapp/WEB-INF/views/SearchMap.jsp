<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="kr.smhrd.entity.Service_areas"%>

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
/* body {
	background-image: url('resources/images/sheets-5329790_1280.jpg');
	width: 100%;
	
} */

@font-face {
	font-family: 'BMJUA_ttf';
	src: url("resources/assets/fonts/BMJUA_ttf.ttf");
	font-weight: normal;
	font-style: normal;
}

h3, h4 {
	font-family: BMJUA_ttf;
}



.container {
  width: 100%;
  height: 800px;
  text-align: center;
  position: relative;
  z-index: 1;
}
.container::after {
  width: 100%;
  height: 100%;
  content: "";
  background: url("resources/images/sheets-5329790_1280.jpg");
  position: absolute;
  top: 0;
  left: 0;
  z-index: -1;
  opacity: 0.3;
}

.logo-intro-area img{
	height:150px;
	position: relative;
}

.bg-image{
	display: flex;
	justify-content: center;
	padding: 50px;
}

.search-box {
	width: 100%;
	position: relative;
	
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

ul, li {
	display: list-item;
	background: white;
}

input {
	height: 38px;
	width: 400px;
}

.search-box {
	height: 400px;
}

.search-result-list {
	border-bottom: 1px solid #ddd;
	position: relative;
	margin-top: 5px;
	
}

.search-box-title {
	background: #333300;
	color: white;
	font-weight: 800px;
	border-top-left-radius: 10px;
	border-top-right-radius: 10px;
}

.search-input {
	display: flex;
	justify-content: space-around;
	flex-direction: column;
	padding: 10px;
	background: #E9E7E8;
}

#searchInput {
	width: 350px;
	text-align: center;
	position: relative;
	border-radius: 10px;
	padding: 20px;
}


.search-input-box, .btn-box {
	display: flex;
	justify-content: center;
	align-items: center;
}

.btn-success {
	width: 200px;
	height: 50px;
	margin-top: 20px;
}

.search-result-box {
	overflow-y: auto;
	position: relative;
	height: 300px;
}

.search-result-box ul{
	padding-left:0px;
}

.result-details {
	text-align: left;
}

.search-count {
	height: 30px;
	background: #F5F0C5;
	font-size: 14px;
	padding-left: 15px;
	padding-top: 3px;
}

.map-box {
	
}

.my-location {
	width: 50px;
	height: 50px;
}

.service-area-bottom {
	display: flex;
	width: 100%;
	justify-content: center;
	position:relative;
	bottom:170px;
}

.submit-button{
	border-radius: 20px;
	background: #198754;
	height: 60px;
	width:300px;
	font-size: 24px;
	font-weight: 800;
	color: white;
	
}
</style>

</head>


<body style="font-family: BMJUA_ttf">
	<div class="logo-intro-area">
		<article class="bg-image">
			<img src="resources/images/intro-image.png">
		</article>

		<div class="brand-logo"></div>

	</div>



	<div class="container">
		<div class="search-box">
			<div class="search-box-title">
				<h3 style="font-weight: 800px;">휴게소 찾기</h3>
			</div>

			<div class="search-box-subtitle"></div>
			<div class="search-input">
				<form action="getSearchServiceArea" method="post">
					<div class="search-input-box">
						<input id="searchInput" type="text"
							placeholder="휴게소명 혹은 지역을 입력해주세요." name="service_name">
					</div>

					<div class="btn-box">
						<input type="submit" class="btn btn-success" value="주소검색">
					</div>
				</form>

			</div>

			<div class="search-count">검색 결과</div>

			<div class="search-result-box">
				<ul class="search-result-list" id="service_area_list">
					<%
					List<Service_areas> Search_service_area_list = (List<Service_areas>) session.getAttribute("Search_service_area_list");
					if (Search_service_area_list != null) {
						int index = 0;
						for (Service_areas s : Search_service_area_list) {
					%>
					<li class="search-result-list"
						onclick="SelectS(<%=s.getService_idx()%>)"><strong><%=s.getService_name()%></strong>
						<p class="result-details">
							<%=s.getService_addr()%>
							<br> "062-673-7745"
						</p></li>
					<%
					index++;
					}
					} else {
					// Search_service_area_list가 세션에 존재하지 않는 경우에 대한 처리
					out.println("값을 입력해주세요!");
					}
					%>
				</ul>
			</div>

		</div>

		<!-- <section class="map-box">
			<div id="map"
				style="width: 100%; height: 400px; bottom: 89px; border-radius: 10px;"></div>
			<div class="service-area-bottom">
				<form action="service_area_Select">
					<input type="submit" value="휴게소 선택하기">
				</form>
			</div>


			
		</section> -->
		<section class="map-box">
			<div id="map"
				style="width: 100%; height: 300px; bottom: 184px; border-radius: 10px;"></div>
			<div class="service-area-bottom">
				<form action="service_area_Select">
					<input type="submit" value="휴게소 선택하기" class="submit-button">
				</form>
			</div>
		</section>



	</div>




	<!-- start footer Area -->



	<!-- End footer Area -->
	<script type="text/javascript">
	/* 검색 선택시 지도 출력 */
	function SelectS(s){
		$.ajax({
			url:'service_Select',
			data : {'service_idx' : s},
			success:function(res){
				
				map = new naver.maps.Map('map', {
			        center: new naver.maps.LatLng(res.lat, res.lng), //지도의 초기 중심 좌표
			        zoom: 17, //지도의 초기 줌 레벨
			        minZoom: 8, //지도의 최소 줌 레벨
			        zoomControl: true, //줌 컨트롤의 표시 여부
			        zoomControlOptions: { //줌 컨트롤의 옵션
			            position: naver.maps.Position.TOP_RIGHT
			        }
			    });
				
				var marker = new naver.maps.Marker({    //마커
			        position: new naver.maps.LatLng(res.lat, res.lng), //위도,경도
			        map: map
			    });
				
			},
			error:function(){
				alert("실패");
			}
		})
	}
	
	/* ---------------------------------------------------------------- */
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