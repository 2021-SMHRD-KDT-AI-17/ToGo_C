<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="kr.smhrd.entity.Service_areas"%>
<%@ page import="java.util.List"%>
<%@page import="kr.smhrd.entity.Conveniences"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="zxx" class="no-js">

<head>
<!-- Mobile Specific Meta -->
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- Favicon-->
<link rel="shortcut icon" href="resources/images/favicon-logo.png">
<!-- Author Meta -->
<meta name="author" content="CodePixar">
<!-- Meta Description -->
<meta name="description" content="">
<!-- Meta Keyword -->
<meta name="keywords" content="">
<!-- meta character set -->
<meta charset="UTF-8">
<!-- Site Title -->
<title>To Go</title>
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
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Noto+Sans+KR:wght@100..900&display=swap"
	rel="stylesheet">

<style type="text/css">
.best-food-area {
	margin: 10px 10px 10px 10px;
	background: white;
	position: relative;
	border-radius: 15px;
	height: 440px;
}

/* 기본 스타일링 */
body {
	font-family: BMJUA_ttf;
	margin: 0;
	padding: 0;
	background-color: #f4f4f4;
	height: 100vh;
	
}


@font-face {
	font-family: 'BMJUA_ttf';
	src: url("resources/assets/fonts/BMJUA_ttf.ttf");
	font-style: normal;
}


p {
	margin-bottom: 0px;
}

.container {
	max-width: 800px;
	margin: 30px auto;
	padding: 0 20px;
	box-sizing: border-box;
	justify-content: center;
}

.wantGoHome {
	width: 20px;
}

.image-box {
	display: grid;
	grid-template-columns: repeat(2, 1fr);
	gap: 20px;
}

.image {
	border-radius: 10px; /* 둥근 테두리 */
	overflow: hidden; /* 테두리를 넘어가는 부분 잘라내기 */
	box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2); /* 더 강한 쉐도우 효과 */
	background-color: #fff; /* 배경색을 흰색으로 지정 */
}

.image img {
	display: block;
	width: 100%;
	height: auto;
	border-radius: 10px; /* 이미지에도 둥근 테두리 적용 */
}

.image .image-overlay {
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background-color: rgba(0, 0, 0, 0.3); /* 투명한 검은색 배경 */
	opacity: 0;
	transition: opacity 0.3s ease; /* 페이드 효과 추가 */
	border-radius: 10px; /* 둥근 테두리 적용 */
}

.image:hover .image-overlay {
	opacity: 1; /* 호버 시 오버레이가 나타나도록 설정 */
}

.image .image-overlay i {
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	color: #fff; /* 아이콘 색상을 흰색으로 지정 */
	font-size: 48px; /* 아이콘 크기 조정 */
}

.welcome-message-box {
	background: linear-gradient(to right, rgba(255, 255, 255, 1) 40%,
		rgba(255, 255, 255, 0) 60%),
		url('resources/images/cars-5970663_1280.png');
	background-size: 100%;
	height: 200px;
	width: 100%;
	border-radius: 10px;
	/* font-family: "Black Han Sans", sans-serif; */
	font-weight: 400;
	font-style: normal;
	margin-top: 50px;
	display: flex;
	flex-direction: column;
	
}

.welcome-message1 {
	font-size: 23px;
	padding: 40px 20px 20px 20px;
}

.welcome-message2 {
	font-size: 18px;
	margin-left: 20px;
}

.festival-area-nav {
	display: flex;
	justify-content: space-around;
}

.conv-info-area {
	display: flex;
	align-items: center;
}

.conv-info-list {
	height: 90px;
	width: 97%;
	align-items: center;
	padding: 20px;
	border-radius: 10px;
	background-color: #F9F9E8;
}

.conv-info-item-icon {
	width: 48px;
	text-align: center;
}

.conv-info-item-icon p {
	margin-bottom: 0px;
}

.food-recommand {
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
	position: relative;
}

.best-food-item {
	width: 200px;
	height: 200px;
}

.go-store-title {
	display: flex;
	justify-content: left;
	align-items: center;
	margin-right: 100px;
}

.go-store-button {
	text-align: right;
	display: flex;
	justify-content: right;
	width: 100%;
}

.goStoresButton {
	border-radius: 10px;
	box-shadow: 2px 3px 1px 0px black;
	margin: 15px;
	height: 40px;
	background: #FCFF94;
}

.food-recommand-tag {
	display: flex;
	width: 100%;
	position: relative;
	left: 10px;
}

.food-recommand-tag1, .food-recommand-tag2 {
	height: 40px;
	width: 100%;
	display: flex;
	text-align: center; align-items : center;
	border-radius: 10px;
	align-items: center;
}

.food-recommand-tag1 {
	color: white;
	background: #333;
}

.food-recommand-tag2 {
	color: black;
	background: #999;
}

.tag-inner-text {
	text-align: center;
	width: 90px;
	font-size: 13px;
	height: 20px;
}

.tag-inner-text-space {
	width: 10px;
}

.card-body {
	display: flex;
	justify-content: space-around;
	align-items: center;
	font-size: 15px !important;
}

.card[color-mode='dark']{
	background-color: red;
	color: #000000;
	transition:all ease-in-out .3s;
}

.card[color-mode='light']{
	background-color: #ffffff;
	color: #000000;
	transition:all ease-in-out .3s;
}

.card-img-top{
	width: 100%;
	height: 140px;
}

#carouselExampleCaptions {
	width: 100%;
	padding: 10px;
	display: inline-block;
}

.carousel-item img {
	object-fit: cover;
	height: 100%;
	width: 100%;
}

.good-message-box {
	margin: 70px 30px 10px 10px;
	width: 100%;
	position: relative;
}

.good-message {
	margin-bottom: 0px;
	font-size: 18px;
	font-weight: 800;
	position: relative;
	top: 10px;
}

.festival-area-title p{
	font-size: 18px;
	font-weight: 800;
	position: relative;
	margin-top: 30px;
	padding-bottom: 10px;
	left: 20px;
	width: 90%;
	border-bottom: 1px solid #999;
}

.festival-area-title span {
	text-align: right;
}

.festival-area-link, .road-view-gallery-slide {
	position: relative;
	left: 285px;
	top:10px;
	text-align: right;
}


.festival-area-link a, .road-view-gallery-slide a {
	list-style: none;
	text-decoration: none;
	color: #999;
}

.road-view-gallary-box{
	width: 100%;
	height: 600px;
	padding-top: 20px;
}
</style>
</head>



<body>

	<!-- 헤더 영역 시작(includes 폴더) -->

	<%@include file="./includes/header.jsp"%>

	<!-- 헤더 영역 끝 -->

	<!-- 3.27 주유소 요금 정보 section 시작 -->

	<div class="welcome-message-box" style="margin-top: 80px">
		<p class="welcome-message1 black-han sans-regular">고객님,</p>
		<p class="welcome-message2 black-han sans-regular">오늘도</p>
		<p class="welcome-message2 black-han sans-regular">맛있는 여행 되세요!</p>
	</div>

	<section class="gas-info-area">
		<div class="gas-info-area" style="margin-top: 30px;">
			<div class="" style="display: flex; justify-content: center;">

				<div class="gas-icon">
					<img alt="" src="resources/images/conv-icon/gas_03_29.png" height="25px">
				</div>
				<%
				Service_areas select_area = (Service_areas) session.getAttribute("select_area");
				if (select_area.getGasoline_price() != 0) {
				%>

				<div class="gas-gasoline">
					<img alt="" src="resources/images/conv-icon/Gasoline.png"
						height="25px"> <span class="gas-gasoline-price font-white" id="money">${select_area.getGasoline_price() }
						<span>원</span>
					</span>
				</div>
				<div class="wantGoHome"></div>
				<div class="gas-diesel">
					<img alt="" src="resources/images/conv-icon/diesel.png"
						height="25px"> <span class="gas-diesel-price font-white">${select_area.getDiesel_price() }
						<span>원</span>
					</span>
				</div>
				<%
				} else {
				%>
				<div>
					<span>해당 휴게소는 주유소가 없습니다.</span>
				</div>
				<%
				}
				%>
			</div>
		</div>

	</section>





	<!-- 3.27 주유소 요금 정보 section 끝 -->

	<!-- 3.27 편의 시설 정보 section 시작 -->


	<section class="conv-info-area">
		<div class="container conv-info-list">
			<div class="conv-info-item"
				style="display: flex; justify-content: space-around;">

				<!-- 객체 목록을 반복해서 출력 -->
				<c:forEach var="c" items="${select_conv_list}">
					<c:if test="${c.conv_name eq '수유실'}">
						<div class="conv-info-item-icon">
							<img src="resources/images/conv-icon/수유실.png" alt="">
							<p>${c.conv_name}</p>
						</div>
					</c:if>
					<c:if test="${c.conv_name eq '샤워실'}">
						<div class="conv-info-item-icon">
							<img src="resources/images/conv-icon/shower-32px.png" alt="">
							<p>${c.conv_name}</p>
						</div>
					</c:if>
					<c:if test="${c.conv_name eq '쉼터'}">
						<div class="conv-info-item-icon">
							<img src="resources/images/conv-icon/park-32px.png" alt="">
							<p class="">${c.conv_name}</p>
						</div>
					</c:if>
					<c:if test="${c.conv_name eq '경정비'}">
						<div class="conv-info-item-icon">
							<img src="resources/images/conv-icon/maintenance-32px.png" alt="">
							<p class="">${c.conv_name}</p>
						</div>
					</c:if>
					<c:if test="${c.conv_name eq 'ATM'}">
						<div class="conv-info-item-icon">
							<img src="resources/images/conv-icon/atm-32px.png" alt="">
							<p>${c.conv_name}</p>
						</div>
					</c:if>
					<c:if test="${c.conv_name eq '특산물'}">
						<div class="conv-info-item-icon">
							<img src="resources/images/conv-icon/souvenir-32px.png" alt="">
							<p class="">${c.conv_name}</p>
						</div>
					</c:if>
					<c:if test="${c.conv_name eq '수면실'}">
						<div class="conv-info-item-icon">
							<img src="resources/images/conv-icon/sleep-32px.png" alt="">
							<p class="">${c.conv_name}</p>
						</div>
					</c:if>

				</c:forEach>


				<!--   편의시설 아직 안됨!!!!!!!!!!!  -->
			</div>
		</div>
	</section>


	<!-- 3.27 편의 시설 정보 section 끝 -->

	<!-- 웹 페이지 간단한? 소개 문구 및  -->

	<section class="order-menu-page">

		<!-- <div class="good-message-box">
			<p class="good-message">오늘도</p>
			<p class="good-message">맛있는 여행 되세요!</p>
		</div> -->

		<div class="food-recommand">
			<table class="food-recommand">
				<tr>
					<div class="food-recommand-tag">
						<div>
							<div class="food-recommand-tag1">
								<span class="tag-inner-text">#눈으로 먹고</span>
							</div>
						</div>
						<div class="tag-inner-text-space"></div>
						<div>
							<div class="food-recommand-tag2">
								<span class="tag-inner-text">#여행에 딱인</span>
							</div>
						</div>
					</div>
					<div class="go-store-button">
						<div class="go-store-title"><strong><span class="font-white">BEST 추천 메뉴</span></strong></div>
						<a href="goStores"><input type="button" class="goStoresButton"
							value="주문하러 가기!"></a>
					</div>
				</tr>
				<tr>
					<td class="best-food-item">
						<div>
							<div class="card" style="margin: 5px;">
								<img src="resources/images/best-food/main-food-ex1.jpg" class="card-img-top"
									alt="...">
								<div class="card-body">
									<p class="card-text">라면</p>
									<div>4,500원</div>
								</div>
							</div>
						</div>
					</td>
					<td class="best-food-item">
						<div>
							<div class="card" style="margin: 5px;">
								<img src="resources/images/best-food/ice-coffee-7995033_640.jpg" class="card-img-top"
									alt="...">
								<div class="card-body">
									<p class="card-text">아메리카노</p>
									<div>2,500원</div>

								</div>
							</div>
						</div>
					</td>
				</tr>
				<tr>
					<td class="best-food-item">
						<div>
							<div class="card" style="margin: 5px;">
								<img src="resources/images/best-food/main-food-ex7.jpg" class="card-img-top"
									alt="...">
								<div class="card-body">
									<p class="card-text">소떡소떡</p>
									<div>3,000원</div>
								</div>
							</div>
						</div>
					</td>
					<td class="best-food-item">
						<div>
							<div class="card" style="margin: 5px;">
								<img src="resources/images/MainOrder.png" class="card-img-top"
									alt="...">
								<div class="card-body">
									<p class="card-text">바지락된장찌개</p>
									<div>12,000원</div>
								</div>
							</div>
						</div>
					</td>
				</tr>

			</table>
		</div>


	</section>

	<section class="best-food-area">
		<div class="good-message-box best-food-title">
			<p class="good-message" style="margin-top: 30px;">맛집러 꿀팁</p>
		</div>
		<div id="carouselExampleCaptions" class="carousel slide"
			data-bs-ride="carousel">
			<div class="carousel-indicators">
				<button type="button" data-bs-target="#carouselExampleCaptions"
					data-bs-slide-to="0" class="active" aria-current="true"
					aria-label="Slide 1"></button>
				<button type="button" data-bs-target="#carouselExampleCaptions"
					data-bs-slide-to="1" aria-label="Slide 2"></button>
				<button type="button" data-bs-target="#carouselExampleCaptions"
					data-bs-slide-to="2" aria-label="Slide 3"></button>
				<button type="button" data-bs-target="#carouselExampleCaptions"
					data-bs-slide-to="3" aria-label="Slide 4"></button>
				<button type="button" data-bs-target="#carouselExampleCaptions"
					data-bs-slide-to="4" aria-label="Slide 5"></button>
				<button type="button" data-bs-target="#carouselExampleCaptions"
					data-bs-slide-to="5" aria-label="Slide 6"></button>
			</div>
			<div class="carousel-inner">
				<div class="carousel-item active">
					<img src="resources/images/best-food/best-food1.jpg"
						class="d-block w-100" alt="...">
					<div class="carousel-caption d-none d-md-block">
						<h5>First slide label</h5>
						<p>Some representative placeholder content for the first
							slide.</p>
					</div>
				</div>
				<div class="carousel-item">
					<img src="resources/images/best-food/best-food2.jpg"
						class="d-block w-100" alt="...">
					<div class="carousel-caption d-none d-md-block">
						<h5>Second slide label</h5>
						<p>Some representative placeholder content for the second
							slide.</p>
					</div>
				</div>
				<div class="carousel-item">
					<img src="resources/images/best-food/best-food3.jpg"
						class="d-block w-100" alt="...">
					<div class="carousel-caption d-none d-md-block">
						<h5>Third slide label</h5>
						<p>Some representative placeholder content for the third
							slide.</p>
					</div>
				</div>
				<div class="carousel-item">
					<img src="resources/images/best-food/best-food4.jpg"
						class="d-block w-100" alt="...">
					<div class="carousel-caption d-none d-md-block">
						<h5>Second slide label</h5>
						<p>Some representative placeholder content for the second
							slide.</p>
					</div>
				</div>
				<div class="carousel-item">
					<img src="resources/images/best-food/best-food5.jpg"
						class="d-block w-100" alt="...">
					<div class="carousel-caption d-none d-md-block">
						<h5>Second slide label</h5>
						<p>Some representative placeholder content for the second
							slide.</p>
					</div>
				</div>
				<div class="carousel-item">
					<img src="resources/images/best-food/best-food6.jpg"
						class="d-block w-100" alt="...">
					<div class="carousel-caption d-none d-md-block">
						<h5>Second slide label</h5>
						<p>Some representative placeholder content for the second
							slide.</p>
					</div>
				</div>
			</div>
			<button class="carousel-control-prev" type="button"
				data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
				<span class="carousel-control-prev-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Previous</span>
			</button>
			<button class="carousel-control-next" type="button"
				data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
				<span class="carousel-control-next-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Next</span>
			</button>
		</div>
	</section>


	<section class="festival-area">
		<div class="festival-area-nav"
			style="display: flex; flex-direction: column;">

			<div class="festival-area-title">
				<p class="font-white">축제 / 관광 정보</p>
				<span class="festival-area-link"><a
					href="https://korean.visitkorea.or.kr/kfes/list/wntyFstvlList.do"
					target="_blank">전체 보기 ></a> </span>
			</div>
			<div></div>
			<figure>
				<div class="container">
					<div class="image-box">
						<div class="image">
							<img src="resources/images/festival-pic/축제1.jpg" alt="Image 1">
						</div>
						<div class="image">
							<img src="resources/images/festival-pic/축제2.jpeg" alt="Image 2">
						</div>
						<div class="image">
							<img src="resources/images/festival-pic/축제3.png" alt="Image 3">
						</div>
						<div class="image">
							<img src="resources/images/festival-pic/축제4.jpg" alt="Image 4">
						</div>
					</div>
				</div>

			</figure>

		</div>

		<div></div>

	</section>

	<!-- 도로 사진 갤러리 -->

	<section class="road-view-gallery">

		<div class="road-view-gallery-box"
			style="display: flex; flex-direction: column;">

			<div class="road-view-gallery-title">
				<p class=""></p>
				<span class="road-view-gallery-slide"><a
					href="https://korean.visitkorea.or.kr/kfes/list/wntyFstvlList.do"
					target="_blank"></a> </span>
			</div>
			<div class="festival-area-title">
				<p class="font-white">우리나라 이모저모</p>
				<span class="festival-area-link"><a
					href="https://korean.visitkorea.or.kr/kfes/list/wntyFstvlList.do"
					target="_blank"> 갤러리 이동 ></a> </span>
			</div>
		</div>
		<article class="road-view-gallary-box">
			<img src="resources/images/road-view-gallary/road-view (8).jpg"
				alt="" class="road-view-gallary-box">
		</article>

	</section>



	<!-- footer 영역 시작(includes 폴더) -->

	<%@include file="./includes/footer.jsp"%>

	<!-- footer 영역 끝 -->

	<script type="text/javascript">

	const formatPrice = (target) => {
		  // 숫자만 남긴 후 포맷
		 target.value = Number(target.value
		   .replace(/[^0-9]/g, ''))
		   .toLocaleString();
		}
	</script>
	
	
	<script>
	document.addEventListener('DOMContentLoaded', function() {
	    const toggleButton = document.getElementById('toggle-radio-dark');
	    const body = document.body;

	    
	    const colorMode = localStorage.getItem('color-mode');
	    if (colorMode === 'dark') {
	        body.setAttribute('color-mode', 'dark');
	        toggleButton.checked = true;
	        enableDarkMode(); // 페이지가 로드될 때 Dark Mode가 활성화된 경우
	    } else {
	        body.setAttribute('color-mode', 'light');
	    }

	    
	    toggleButton.addEventListener('change', function() {
	        if (toggleButton.checked) {
	            enableDarkMode();
	        } else {
	            disableDarkMode();
	        }
	    });

	   
	    function enableDarkMode() {
	        body.setAttribute('color-mode', 'dark');
	        
	        const fontWhiteElements = document.querySelectorAll('.font-white');
	        fontWhiteElements.forEach(function(element) {
	            element.style.color = '#F5F5F5';
	        });
	        localStorage.setItem('color-mode', 'dark');
	    }

	    
	    function disableDarkMode() {
	        body.setAttribute('color-mode', 'light');
	       
	        const fontWhiteElements = document.querySelectorAll('.font-white');
	        fontWhiteElements.forEach(function(element) {
	           
	            element.style.color = ''; 
	        });
	        localStorage.setItem('color-mode', 'light');
	    }
	});

	</script>


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
	<script src="resources/assets/js/countdown.js"></script>
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
	<script src="checkout.js"></script>
</body>
</body>

</html>