<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	
<!DOCTYPE html>
<html lang="zxx" class="no-js">

<head>
<!-- Mobile Specific Meta -->
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- Favicon-->
<link rel="shortcut icon" href="resources/images/favicon-16x16.png">
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
<style>
.bgImg1 {
	background-image: url("resources/images/MainOrder.png");
	background-size:;
	background-repeat: no-repeat;
}

.bgImg2 {
	background-image: url("resources/images/MainGas.jpg")
}

.bgImg3 {
	background-image: url("resources/images/MainRest.jpg")
}

.bgImg4 {
	background-image: url("resources/images/MainFestival.jpg")
}

.d-block {
	height: 300px;
	width: 400px;
}

a {
	list-style: none;
	text-decoration: none;
}

.conv-info-item-icon {
	width: 48px;
}

.wrap {
	max-width: 800px;
	min-width: 500px;
}

.menu {
	display: flex;
}

.menu_item {
	flex: 1;
}

.primary-btn {
	position: relative;
	overflow: hidden;
	color: #fff;
	padding: 0px; ! important;
	line-height: 0px; ! important;
	border-radius: 50px;
	display: inline-block;
	text-transform: uppercase;
	font-weight: 500;
	cursor: pointer;
	-webkit-transition: all 0.3s ease 0s;
	-moz-transition: all 0.3s ease 0s;
	-o-transition: all 0.3s ease 0s;
	transition: all 0.3s ease 0s;
}

.cart-area-nav{
	background: rgb(182, 198, 159);
	width: 100%; 
	height: 200px;
	margin-top:0px;
	position:relative;
	 
}

.cart-area-nav-title{
	position: absolute;
	top: 70px;
}
</style>

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

</head>

<script src="https://cdn.iamport.kr/v1/iamport.js"></script>


<body>

	<!-- 헤더 영역 시작(includes 폴더) -->

	<%@include file="./includes/header.jsp"%>

	<!-- 헤더 영역 끝 -->




	<!--================Cart Area
    
    1. 결제하기 위에 핸드폰 번호 넣기
    2. 
    
     =================-->
    <section class="cart-area-nav">
    	<div class="container cart-area-nav-title">
    		<h2 class="cart-area-nav-title">장바구니 목록</h2>
    	</div>
    </section> 
     
     
	<section class="cart_area" style="padding-top: 10px">
		<div class="container">
			<div class="cart_inner">
				<div class="table-responsive">
					<table class="table">
						<thead>
							<tr>
								<th scope="col">상품명</th>
								<th scope="col">개당가격</th>
								<th scope="col">수량</th>
								<th scope="col">합계</th>
<!-- 								<th scope="col">요구사항</th> -->							
							</tr>
						</thead>
						<tbody>
							<% int index=0; %>
							<c:forEach items="${b_list}" var="b" varStatus="status">
							
							<tr>
								<td>
									<div class="media">
										<div class="d-flex" style="display: flex; flex-direction: column;">
											<div>
												<img src="<%-- 사진여기에 넣으면됨 ${b.menu_Img} --%>" alt=""
												style="width: 80px; height: 60px">
												
											</div> 
											<div>
												<span>${b.menu_name}</span>
											</div>
								
										</div>
									</div>
								</td>
								<td>
									<h5 >${b.menu_price}원</h5>
								</td>
								<td>
									<h5>${b.order_cnt}개</h5>
		
								</td>
								<td>
									<h5 ><span class="price">${b.total}</span>원</h5>
								</td>
									<%-- <td>${b.order_request}</td> --%>
						</tr>
							</c:forEach>
							
							<tr class="bottom_button">
								<td colspan="2"><a class="gray_btn" href="basketAllDelete"
									style="padding: 10px;">상품 비우기</a></td>
								<td colspan="4">
									<div>
										<p>휴대폰 번호</p>
										<input type="text" class="form-control" oninput="oninputPhone(this)" maxlength="13">
									</div>
								</td>
								<td></td>
								<td></td>
								<td></td>
							</tr>
							<tr>
								<td></td>
								<td></td>
								<td>
									<h5>총 가격</h5>
								</td>
								<td colspan="2"><h5 id="total_price"></h5>원</td>
								<td></td>
							</tr>
							<tr>
								<td colspan="6" class="pickup-title"
									style="border-bottom: none; padding-top: 10px; padding-bottom: 10px">
									<p>픽업 예정 시간</p>
								</td>
							</tr>
							<tr style="border-bottom: none;" >
								<td colspan="6" style="border-bottom: none;">
									<div class="container"
										style="display: flex; justify-content: space-around;">
										<div>
											<button class="btn btn-light" style="font-size: 15px;">5분
												후</button>
										</div>
										<div>
											<button class="btn btn-light" style="font-size: 15px;">10분
												후</button>
										</div>
										<div>
											<button class="btn btn-light" style="font-size: 15px;">15분
												후</button>
										</div>

									</div>
								</td>
							</tr>
							<tr style="border-top: none;" >
								<td colspan="6" style="border-top: none;">
									<div class="container"
										style="display: flex; justify-content: space-around;">
										<div>
											<button class="btn btn-light" style="font-size: 15px;">20분
												후</button>
										</div>
										<div>
											<button class="btn btn-light" style="font-size: 15px;">25분
												후</button>
										</div>
										<div>
											<button class="btn btn-light" style="font-size: 15px;">30분
												후</button>
										</div>
									</div>
								</td>
							
							<tr class="out_button_area" style="border-top: none;">
								<td colspan="2"><a class="gray_btn" href="goStores">쇼핑 계속하기</a> </td>
								<td colspan="5">
									<div>
										<a class="primary-btn" onclick="requestPay()">결제하기</a>
									</div>
								</td>
								<td></td>
								<td></td>
								<td></td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</section>
	<!--================End Cart Area =================-->


	<!-- footer 영역 시작(includes 폴더) -->

	<%@include file="./includes/footer.jsp"%>

	<!-- footer 영역 끝 -->

	<script type="text/javascript">
	
	let price = document.getElementsByClassName("price");
	let t = 0;
	
	for(let i = 0;i<price.length;i++){
		let priceText = price[i].innerText;
	    let priceValue = parseInt(priceText);
	    if (!isNaN(priceValue)) { // 숫자가 아닌 경우에는 무시
	        t += priceValue;
	    }
	}
	
	document.getElementById("total_price").innerText = t;
	
	function oninputPhone(target) {
	    target.value = target.value
	        .replace(/[^0-9]/g, '')
	        .replace(/(^02.{0}|^01.{1}|[0-9]{3,4})([0-9]{3,4})([0-9]{4})/g, "$1-$2-$3");
	}
		
	</script>
	
	 <script>
IMP.init("imp14397622");

function requestPay() {
  IMP.request_pay({
    pg: "html5_inicis",
    pay_method: "card",
    merchant_uid: "test_ltsj8zlm",
    name: "테스트 결제",
    amount: 100,
    buyer_tel: "010-0000-0000",
  });
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
<script src="https://kit.fontawesome.com/d97bdf4abd.js"
	crossorigin="anonymous"></script>
</body>

</html>