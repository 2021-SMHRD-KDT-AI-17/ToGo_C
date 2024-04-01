<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx" class="no-js">

<head>
	<!-- Mobile Specific Meta -->
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<!-- Favicon-->
	<link rel="shortcut icon" href="resources/images/fav.png">
	<!-- Author Meta -->
	<meta name="author" content="CodePixar">
	<!-- Meta Description -->
	<meta name="description" content="">
	<!-- Meta Keyword -->
	<meta name="keywords" content="">
	<!-- meta character set -->
	<meta charset="UTF-8">
	<!-- Site Title -->
	<title>ToGo</title>

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
	<link rel="stylesheet" href="resources/assets/css/ion.rangeSlider.skinFlat.css" />
	<link rel="stylesheet" href="resources/assets/css/magnific-popup.css">
	<link rel="stylesheet" href="resources/assets/css/main.css">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<style>

body {
	font-family: Arial, sans-serif;
	margin: 0;
	padding: 0;
	background-color: #f4f4f4;
	height: 100vh;
}

.pmc-banner-img{
	width: 100%;
	height: 300px;
	background-color: #5AAEFF;
}

.result-order-done{
	text-align: center;
	border-bottom-style: dashed ;
	border-bottom-color: #8D8D8D;
}

.result-order{
	height: 
}

.result-order-box{

	height: 600px;
	width: 370px;
	position: relative; 
	bottom:100px; 
	background-image: url("resources/images/resultOrder2.png");
	background-repeat: no-repeat;
	background-size : contain;
	display: flex;
	flex-direction: column;

table{
	width:340px;
	text-align: center;
}
	
th,tr,td{
	font-size: 12px;
}

.col1{
	width: 35%;
}

.col2{
	width: 25%;
}
.col3{
	width: 15%;
}
.col4{
	width: 25%;
}
	
	
}

.check-img{
	height: 100px;
	width: 100%;
	padding: 50px auto;
	text-align: center;
}

img{
	height: 55px;
	width: 55px;
	margin-top: 20px;
}

.result-order-info{
	margin: 10px 0px 10px 0px;
	border-bottom-style: solid;
	border-bottom-color: #D5D5D5;
}

.result-order-list{
	width:100%;
	height:160px;
	display: flex;
	justify-content: center;
}

.result-order-list-detail{
	overflow-y: auto;
	overflow-x: hidden;
}

.result-total{
	height : 70px;
	width: 100%;
	text-align: right;
	font-size: 18px;
		
}

.result-time-message{
	text-align: center;
	font-size: 24px;
	padding: 5px;
}
</style>

</head>

<body>

	<!-- Start Header Area -->
	
	<%@include file = "./includes/header.jsp" %>

	<!-- End Header Area -->
	
	<!-- 3.30 결제 완료 창 시작-->
	<figure class="pmc-banner-img"></figure>
	
	
	<section class="container result-order-box">
		<div class="check-img">
			<img src="resources/images/orderResult3.png" alt="">
		</div>
		<div class="result-order-done">
			<h2>결제 요청 처리 완료</h2>
		</div>
		
		<div class="result-order-info">
			<p><strong>주문 번호</strong> : a1231231</p>
			<p>휴게소 이름 : 광주휴게소 </p>
		</div>
		<div class="result-order-list">
			<div class="result-order-list-detail">
			<table>
				
				<tr>
					<th class="col1">상품명</td>
					<th class="col2">단가</td>
					<th class="col3">수량</td>
					<th class="col4">금액</td>
				</tr>
				
				<tr>
					<td >떡볶이</td>
					<td>2,000원</td>
					<td>2개</td>
					<td>4,000원</td>
					
				</tr>	
			</table>
		</div>
		
		</div>
		
		<div class="result-total">
			<p style="margin: 10px 0px 5px 0px;">총 결제 금액 <span class="">00000</span>원</p>
		</div>
		
		<div class="result-time-message">
			OO 분 후에 픽업해주세요.
		</div>
		
	</section>
	
	
	
		
	
	<!-- 3.30 결제 완료 창 끝-->
	


	<script src="resources/assets/js/vender/jquery-2.2.4.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4"
	 crossorigin="anonymous"></script>
	<script src="resources/assets/js/vender/bootstrap.min.js"></script>
	<script src="resources/assets/js/jquery.ajaxchimp.min.js"></script>
	<script src="resources/assets/js/jquery.nice-select.min.js"></script>
	<script src="resources/assets/js/jquery.sticky.js"></script>
	<script src="resources/assets/js/nouislider.min.js"></script>
	<script src="resources/assets/js/jquery.magnific-popup.min.js"></script>
	<script src="resources/assets/js/owl.carousel.min.js"></script>
	<!--gmaps Js-->
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCjCGmQ0Uq4exrzdcL6rvxywDDOvfAu6eE"></script>
	<script src="resources/assets/js/gmaps.min.js"></script>
	<script src="resources/assets/js/main.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>

</html>
