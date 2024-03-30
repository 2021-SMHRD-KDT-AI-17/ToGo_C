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
<title>To Go</title>s
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

<style type="text/css">
.best-food-area {
	margin-bottom: 20px;
}

/* 기본 스타일링 */
body {
	font-family: Arial, sans-serif;
	margin: 0;
	padding: 0;
	background-color: #f4f4f4;
	height: 100vh;
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

.festival-area-nav {
	display: flex;
	justify-content: space-around;
}

.conv-info-area {
	display : flex;
	align-items:center;
}

.conv-info-list{
	height: 50px;
	align-items:center;
	
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

.food-recommand-tag {

	display: flex;
	position : relative;
	right: 80px;
	
}

.food-recommand-tag1, .food-recommand-tag2 {

	height: 30px;
	width: 100%;
	text-align: center;
	align-content:center;
	display: flex;
}

.food-recommand-tag1{
	color: white;
	background: #333;
}

.food-recommand-tag2{
	color: black;
	background: #999;
}

color: white;
	background-color: #222;

.tag-inner-text{
	text-align: center;
	align-items: center;
	width: 100%;
	font-size:18px;
	height: 28px;
}

.card-body {
	display: flex;
	justify-content: space-around;
	align-items: center;
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
	margin: 20px 30px 20px 30px;
	width: 100%
}

.good-message {
	margin-bottom: 0px;
	font-size: 18px;
	font-weight: 800;
}

.order-menu-page {
	
}
</style>
</head>



<body>

	<!-- 헤더 영역 시작(includes 폴더) -->

	<%@include file="./includes/header.jsp"%>

	<!-- 헤더 영역 끝 -->

	<!-- 3.27 주유소 요금 정보 section 시작 -->

	<section class="gas-info-area">
		<div class="gas-info-area" style="margin-top: 130px;">
			<div class="" style="display: flex; justify-content: center;">

				<div class="gas-icon">
					<i class="fa-solid fa-gas-pump"></i> <img alt=""
						src="resources/images/conv-icon/gas_03_29.png" height="25px">
				</div>
				<%
				Service_areas select_area = (Service_areas) session.getAttribute("select_area");
				if (select_area.getGasoline_price() != 0) {
				%>

				<div class="gas-gasoline">
					<img alt="" src="resources/images/conv-icon/Gasoline.png"
						height="25px"> <span class="gas-gasoline-price" id="money">${select_area.getGasoline_price() }
						<span>원</span>
					</span>
				</div>
				<div class="wantGoHome"></div>
				<div class="gas-diesel">
					<img alt="" src="resources/images/conv-icon/diesel.png"
						height="25px"> <span class="gas-diesel-price">${select_area.getDiesel_price() }
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
							<p>${c.conv_name}</p>
						</div>
					</c:if>
					<c:if test="${c.conv_name eq '경정비'}">
						<div class="conv-info-item-icon">
							<img src="resources/images/conv-icon/maintenance-32px.png" alt="">
							<p>${c.conv_name}</p>
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
							<p>${c.conv_name}</p>
						</div>
					</c:if>
					<c:if test="${c.conv_name eq '수면실'}">
						<div class="conv-info-item-icon">
							<img src="resources/images/conv-icon/sleep-32px.png" alt="">
							<p>${c.conv_name}</p>
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

		<div class="good-message-box">
			<p class="good-message">오늘도</p>
			<p class="good-message">맛있는 여행 되세요!</p>
		</div>

		<div class="food-recommand">
			<table class="food-recommand">
				<tr>
					<div class="food-recommand-tag">
						<div>
							<div class="food-recommand-tag1" style="align-items: flex-start;">
								<span class="tag-inner-text">#눈으로 먹고</span></div>
						</div>

						<div>
							<div class="food-recommand-tag2"><span class="tag-inner-text">#여행에 딱인</span></div>
						</div>
					</div>
					<div class="goStores">
						<a href="goStores"><input type="button" class="goStoresButton" 
							value="주문하러 가기!" ></a>
					</div>
				</tr>
				<tr>
					<td class="best-food-item">
						<div>
							<div class="card">
								<img src="resources/images/MainOrder.png" class="card-img-top"
									alt="...">
								<div class="card-body">
									<p class="card-text">떡볶이</p>
									<div>3,500원</div>
								</div>
							</div>
						</div>
					</td>
					<td class="best-food-item">
						<div>
							<div class="card">
								<img src="resources/images/MainOrder.png" class="card-img-top"
									alt="...">
								<div class="card-body">
									<p class="card-text">떡볶이</p>
									<div>3,500원</div>

								</div>
							</div>
						</div>
					</td>
				</tr>
				<tr>
					<td class="best-food-item">
						<div>
							<div class="card">
								<img src="resources/images/MainOrder.png" class="card-img-top"
									alt="...">
								<div class="card-body">
									<p class="card-text">떡볶이</p>
									<div>3,500원</div>
								</div>
							</div>
						</div>
					</td>
					<td class="best-food-item">
						<div>
							<div class="card">
								<img src="resources/images/MainOrder.png" class="card-img-top"
									alt="...">
								<div class="card-body">
									<p class="card-text">떡볶이</p>
									<div>3,500원</div>
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
			<p class="good-message">맛집러 꿀팁</p>
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

			<div class="good-message-box">
				<p class="good-message">축제 / 관광 정보</p>
				<span><a href="https://korean.visitkorea.or.kr/kfes/list/wntyFstvlList.do" target="_blank">전체 보기</a> </span>
			</div>
			<div>
				
			</div>
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

	<!-- Start exclusive deal Area -->

	<!-- Start brand Area -->
	<section class="brand-area section_gap">
		<div class="container">
			<div class="row">
				<a class="col single-img" href="#"> <img
					class="img-fluid d-block mx-auto"
					src="resources/images/brand/1.png" alt="">
				</a> <a class="col single-img" href="#"> <img
					class="img-fluid d-block mx-auto"
					src="resources/images/brand/2.png" alt="">
				</a> <a class="col single-img" href="#"> <img
					class="img-fluid d-block mx-auto"
					src="resources/images/brand/3.png" alt="">
				</a> <a class="col single-img" href="#"> <img
					class="img-fluid d-block mx-auto"
					src="resources/images/brand/4.png" alt="">
				</a> <a class="col single-img" href="#"> <img
					class="img-fluid d-block mx-auto"
					src="resources/images/brand/5.png" alt="">
				</a>
			</div>
		</div>
	</section>
	<!-- End brand Area -->

	<!-- Start related-product Area -->
	<section class="related-product-area section_gap_bottom">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-lg-6 text-center">
					<div class="section-title">
						<h1>Deals of the Week</h1>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
							sed do eiusmod tempor incididunt ut labore et dolore magna
							aliqua.</p>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-9">
					<div class="row">
						<div class="col-lg-4 col-md-4 col-sm-6 mb-20">
							<div class="single-related-product d-flex">
								<a href="#"><img src="resources/images/r1.jpg" alt=""></a>
								<div class="desc">
									<a href="#" class="title">Black lace Heels</a>
									<div class="price">
										<h6>$189.00</h6>
										<h6 class="l-through">$210.00</h6>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-4 col-md-4 col-sm-6 mb-20">
							<div class="single-related-product d-flex">
								<a href="#"><img src="resources/images/r2.jpg" alt=""></a>
								<div class="desc">
									<a href="#" class="title">Black lace Heels</a>
									<div class="price">
										<h6>$189.00</h6>
										<h6 class="l-through">$210.00</h6>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-4 col-md-4 col-sm-6 mb-20">
							<div class="single-related-product d-flex">
								<a href="#"><img src="resources/images/r3.jpg" alt=""></a>
								<div class="desc">
									<a href="#" class="title">Black lace Heels</a>
									<div class="price">
										<h6>$189.00</h6>
										<h6 class="l-through">$210.00</h6>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-4 col-md-4 col-sm-6 mb-20">
							<div class="single-related-product d-flex">
								<a href="#"><img src="resources/images/r5.jpg" alt=""></a>
								<div class="desc">
									<a href="#" class="title">Black lace Heels</a>
									<div class="price">
										<h6>$189.00</h6>
										<h6 class="l-through">$210.00</h6>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-4 col-md-4 col-sm-6 mb-20">
							<div class="single-related-product d-flex">
								<a href="#"><img src="resources/images/r6.jpg" alt=""></a>
								<div class="desc">
									<a href="#" class="title">Black lace Heels</a>
									<div class="price">
										<h6>$189.00</h6>
										<h6 class="l-through">$210.00</h6>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-4 col-md-4 col-sm-6 mb-20">
							<div class="single-related-product d-flex">
								<a href="#"><img src="resources/images/r7.jpg" alt=""></a>
								<div class="desc">
									<a href="#" class="title">Black lace Heels</a>
									<div class="price">
										<h6>$189.00</h6>
										<h6 class="l-through">$210.00</h6>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-4 col-md-4 col-sm-6">
							<div class="single-related-product d-flex">
								<a href="#"><img src="resources/images/r9.jpg" alt=""></a>
								<div class="desc">
									<a href="#" class="title">Black lace Heels</a>
									<div class="price">
										<h6>$189.00</h6>
										<h6 class="l-through">$210.00</h6>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-4 col-md-4 col-sm-6">
							<div class="single-related-product d-flex">
								<a href="#"><img src="resources/images/r10.jpg" alt=""></a>
								<div class="desc">
									<a href="#" class="title">Black lace Heels</a>
									<div class="price">
										<h6>$189.00</h6>
										<h6 class="l-through">$210.00</h6>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-4 col-md-4 col-sm-6">
							<div class="single-related-product d-flex">
								<a href="#"><img src="resources/images/r11.jpg" alt=""></a>
								<div class="desc">
									<a href="#" class="title">Black lace Heels</a>
									<div class="price">
										<h6>$189.00</h6>
										<h6 class="l-through">$210.00</h6>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-3">
					<div class="ctg-right">
						<a href="#" target="_blank"> <img
							class="img-fluid d-block mx-auto"
							src="resources/images/category/c5.jpg" alt="">
						</a>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- End related-product Area -->

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