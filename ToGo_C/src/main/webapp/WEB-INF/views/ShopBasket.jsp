<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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

.strong {
	font-weight: 800px;
}

.go-credit {
	width: 200px;
	height: 60px;
	border: 1px solid black;
	font-size: 18px;
	font-weight: 900;
	border-radius: 10px;
	box-shadow: 2px 3px 1px 0px black;
	margin: 15px;
	background: #FCFF94;
}

.d-block {
	height: 300px;
	width: 400px;
	display: flex;
	flex-direction: column;
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

.cart-area-nav {
	background: rgb(182, 198, 159);
	width: 100%;
	height: 200px;
	margin-top: 0px;
	position: relative;
}

#total_price {
	
}

.cart-area-nav-title {
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
								<th scope="col">단가</th>
								<th scope="col">수량</th>
								<th scope="col">합계</th>
								<th scope="col"></th>
								<th></th>
								<!-- 								<th scope="col">요구사항</th> -->
							</tr>
						</thead>
						<tbody>
							<%-- <% int index=0; %> --%>
							<c:forEach items="${b_list}" var="b" varStatus="status">

								<tr>
									<td>
										<div class="media">
											<div class="d-flex"
												style="display: flex; flex-direction: column; padding: 0px;">
												<div>
													<img src="<%-- 사진여기에 넣으면됨 ${b.menu_Img} --%>" alt=""
														style="width: 90px; height: 70px">

												</div>
												<div>
													<span>${b.menu_name}</span>
												</div>

											</div>
										</div>
									</td>
									<td>
										<h5>${b.menu_price}원</h5>
									</td>
									<td>
										<h5>${b.order_cnt}개</h5>

									</td>
									<td>
										<h5>
											<span class="price">${b.total}</span>원
										</h5>
									</td>
									<td>
									<!-- Delete button for individual item -->
            <form action="basketDelete" method="post">
                <input type="hidden" name="itemIndex" value="${status.index}" />
                <button type="submit">Delete</button>
            </form>
									</td>
								</tr>
							</c:forEach>

							<tr class="bottom_button">
								<td colspan="1"><a class="gray_btn strong"
									href="basketAllDelete"
									style="padding: 5px; text-decoration: none; border-radius: 10px;">
										전체 삭제</a></td>
								<td colspan="4">
									<div>
										<p class="strong">휴대폰 번호</p>
										<input type="text" id="phone_no" class="form-control"
											oninput="oninputPhone(this)" maxlength="13">
									</div>
								</td>

							</tr>
							<tr>


								<td style="background: #ffdfdf; text-align:center; font-size: 25px"><h5>
										<strong>총 가격</strong>
									</h5></td>
								<td></td>

								<td colspan="2"><span id="total_price"></span>원</td>
								<td></td>
							</tr>
							<tr>
								<td colspan="3" class="pickup-title"
									style="border-bottom: none; padding-top: 10px; padding-bottom: 10px">
									<p class="strong">픽업 예정 시간</p>
								</td>

							</tr>
							<tr style="border-bottom: none;">
								<td colspan="5" style="border-bottom: none;">
									<div class="container"
										style="display: flex; justify-content: space-around;">

										<div>
											<button class="btn btn-light strong"
												style="font-size: 18px; background: #ffdfdf;">&nbsp;5분
												후</button>
										</div>
										<div>
											<button class="btn btn-light strong"
												style="font-size: 18px; background: #ffdfdf;">10분 후
											</button>
										</div>
										<div>
											<button class="btn btn-light strong"
												style="font-size: 18px; background: #ffdfdf;">15분 후
											</button>
										</div>

									</div>
								</td>
							</tr>
							<tr style="border-top: none;">
								<td colspan="5" style="border-top: none;">
									<div class="container"
										style="display: flex; justify-content: space-around;">
										<div>
											<button class="btn btn-light strong"
												style="font-size: 18px; background: #ffdfdf;">20분 후
											</button>
										</div>
										<div>
											<button class="btn btn-light strong"
												style="font-size: 18px; background: #ffdfdf;">25분 후
											</button>
										</div>
										<div>
											<button class="btn btn-light strong"
												style="font-size: 18px; background: #ffdfdf;">30분 후
											</button>
										</div>
									</div>
								</td>

							</tr>
							<tr class="out_button_area" style="border-top: none;">
								<td colspan="1"><a class="gray_btn strong" href="goStores"
									style="text-align:center; padding: 5px; text-decoration: none; border-radius: 10px;">쇼핑<br>
										계속하기</a></td>
								<td colspan="4">
									<div>
										<a class="primary-btn strong go-credit"
											style="width: 170px; height: 60px; border: 1px solid black; font-size: 18px; font-weight: 900; border-radius: 10px; box-shadow: 2px 3px 1px 0px black; margin: 15px; background: #FCFF94;"
											onclick="checkPhone()"><i class="fa-regular fa-credit-card"></i>&nbsp;결제하기</a>
									</div>
								</td>
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

	 IMP.init("imp14397622");

	 function checkPhone() {
		 
		 var loginMemberValue = <%= loginMember != null ? "true" : "false" %>;
		 var total_price = parseInt(document.getElementById("total_price").innerText);
		 console.log("총금액"+t);

		    if (!loginMemberValue) {
		        
		        console.log("로그인 안되어 있음");
		        var phone_noValue = document.getElementById("phone_no").value;
		        if (phone_noValue === "") {
		            alert("전화번호를 입력하세요");
		        } else {
		        	var dynamicUrl = "goOrderList?phone_noValue=" + phone_noValue + "&t="+t;
		             window.location.href = dynamicUrl;
		        }   
		    } else {
		    	console.log("로그인되어 있음");
		    	var dynamicUrl = "goOrderList?total_price=" + total_price;
	             window.location.href = dynamicUrl;
		    }
	 }

	 function requestPay(phone_noValue) { // phone_noValue를 매개변수로 받도록 수정
	     IMP.request_pay({
	         pg: "html5_inicis",
	         pay_method: "card",
	         merchant_uid: "",
	         name: "t",
	         amount: 100,
	         buyer_tel: phone_noValue, // 입력된 전화번호 사용
	     }, async (rsp) => {
	         if (rsp.success) {
	             // 결제 성공시
	             alert("결제 성공");
	             // 결제 성공 후 페이지 이동
	             var dynamicUrl = "goOrderList?phone_noValue=" + phone_noValue;
	             window.location.href = dynamicUrl;
	         } else {
	             // 결제 실패시
	             alert("결제 실패");
	         }
	     });
	 }


</script>


	<!-- 픽업시간 선택 스크립트 -->
	<script>
document.querySelectorAll('.btn.btn-light').forEach(button => {
	button.addEventListener('click', function() {
        
        // 클릭된 버튼의 내용(텍스트) 값을 가져와서 출력
        console.log("Clicked button value:", this.textContent);
    });
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
<script src="https://kit.fontawesome.com/d97bdf4abd.js"
	crossorigin="anonymous"></script>
</body>

</html>