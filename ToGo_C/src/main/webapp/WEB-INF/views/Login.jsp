<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx" class="no-js">

<head>
<!-- Mobile Specific Meta -->
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
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
.cart-area-nav {
	/* background: linear-gradient(62deg, #A5BD85, rgb(182, 198, 159)); */
	background: rgb(182, 198, 159);
	opacity:1;
	width: 100%;
	height: 200px;
	margin-top: 0px;
	position: relative;
}

.cart-area-nav-title{
	font-size:21px;
	font-weight:bold;
	position: relative;
	top:60px;
}

a{
	text-decoration: none;
}

@font-face{
	font-family: 'BMJUA_ttf';
	src: url("resources/assets/fonts/BMJUA_ttf.ttf");
	font-weight: normal;
	font-style: normal;
}

h3, h4{	
	font-family: BMJUA_ttf;

}

</style>
</head>


<body style="font-family: BMJUA_ttf">

	<!-- Start Header Area -->

	<%@include file="./includes/header.jsp"%>

	<!-- End Header Area -->

	<!-- Start Banner Area -->
	<section class="cart-area-nav">
		<div class="container cart-area-nav-title">
			<h2 class="cart-area-nav-title">로그인 / 회원가입</h2>
		</div>
	</section>
	<!-- End Banner Area -->

	<!--================ 3.23 로그인 박스 영역 시작 =================-->

	<section class="login_box_area section_gap">
		<div class="container">
			<div class="row">
				<div class="col-lg-6">
					<div class="login_box_img" style="margin: 0px;">
						<img class="img-fluid" src="resources/images/play-stone-1738160_1280.jpg" alt="">
						<div class="hover">
							<h4>처음 방문하셨나요?</h4>
							<p>회원가입은 간편하게, 혜택은 다양하게!</p>
							<a class="primary-btn" href="goJoin">가입하기</a>
						</div>
					</div>
				</div>
				<div class="col-lg-6">
					<div class="login_form_inner"
						style="padding-top: 20px; margin-top: 10px">
						<h3>
							로그인 <span style="font-size: 11px">Login</span>
						</h3>

						<form class="row login_form" action="membersLogin" method="post"
							id="contactForm" novalidate="novalidate">

							<!-- 3.24 로그인 플로팅 버젼으로 변경 - 홍창민
							
								<필요사항>
								
								1. 로그인 버튼 누를 때 아이디 비밀번호가 공란일 시 밑에 비동기 문구로 "* 아이디를 입력해주세요." 문구 출력 
							
							 -->
							<div class="form-floating mb-3">
								<input type="text" class="form-control" id="floatingInput"
									placeholder="아이디 id" name="mb_id"> <label
									for="floatingInput">아이디</label>
							</div>
							<div class="form-floating">
								<input type="password" class="form-control"
									id="floatingPassword" placeholder="패스워드 password" name="mb_pw">
								<label for="floatingPassword">비밀번호</label>
							</div>
							<div class="col-md-12 form-group">
								<div class="creat_account">
									<input type="checkbox" id="f-option2" name="selector">
									<label for="f-option2">로그인 상태 유지</label>
								</div>
							</div>
							<div class="col-md-12 form-group">
								<button type="submit" value="submit" class="primary-btn">로그인</button>
								<a href="#">비밀번호 찾기</a>
							</div>

							<div class="col-md-12 form-group">
								<a id="kakao-login-btn" href="javascript:loginWithKakao()">
									<img
									src="https://k.kakaocdn.net/14/dn/btroDszwNrM/I6efHub1SN5KCJqLm1Ovx1/o.jpg"
									width="222" alt="카카오 로그인 버튼" />
								</a>
								<p id="token-result"></p>
							</div>
							<div class="col-md-12 form-group">
								<div id="naver_id_login"></div>
							</div>

						</form>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--================로그인 박스 영역 끝================-->


	<!-- start footer Area -->

	<%@include file="./includes/footer.jsp"%>

	<!-- End footer Area -->


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
</body>

</html>