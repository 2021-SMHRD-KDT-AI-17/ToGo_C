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
* {
	margin: 0;
	padding: 0;
}

ul {
	list-style: none;
	text-align: center;
}

a {
	text-decoration: none;
	color: #333;
}

.wrap {
	padding: 15px;
	letter-spacing: -0.5px;
}

.tab_menu {
	position: relative;
}

.tab_menu .list {
	overflow: hidden;
}

.tab_menu .list li {
	float: left;
	margin-right: 16px;
}

.tab_menu .list .btn {
	font-size: 35px;
}

.tab_menu .list .cont {
	display: none;
	position: absolute;
	top: 63px;
	left: 0;
	background: white;
	color: black;
	text-align: center;
	width: 100%;
	height: 700px;
}

.tab_menu .list li.is_on .btn {
	font-weight: bold;
	color: white;
	background: #555;
}

.tab_menu .list li.is_on .cont {
	display: block;
}

span {
	padding: 0 10px 0 10px;
}

.flexx {
	align-items: center;
	padding: 10px;
	border-bottom: 1px solid #999;
}

.popup {
	display: none;
	position: fixed;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	width: 700px;
	height: 700px;
	border: 1px solid #ccc;
	background-color: #fff;
	padding: 20px;
	z-index: 1000;
	opacity: 0;
	/* 처음에는 투명하게 설정 */
	transition: opacity 0.1s ease-in-out;
	/* 애니메이션 효과 설정 */
}

.popup-content {
	text-align: center;
}

.close {
	position: absolute;
	top: 5px;
	right: 5px;
	width: 40px;
	height: 40px;
	cursor: pointer;
	display: flex;
	justify-content: center;
	align-items: center;
	font-size: 30px;
	color: #000;
	background: none;
	border: none;
}

.close:hover {
	color: #999;
}

.popup-click {
	cursor: pointer;
	padding: 10px 20px;
	background-color: #999;
	color: #fff;
}

.overlay {
	position: fixed;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background-color: rgba(0, 0, 0, 0.5);
	z-index: 999;
	display: none;
}
</style>


</style>

</head>

<body>



	<!-- Start Header Area -->

	<%@include file="./includes/header.jsp"%>

	<!-- End Header Area -->

	<!-- Start Banner Area -->
	<section class="banner-area organic-breadcrumb">
		<div class="container">
			<div
				class="breadcrumb-banner d-flex flex-wrap align-items-center justify-content-end">
				<div class="col-first">
					<h1>Login/Register</h1>
					<nav class="d-flex align-items-center">
						<a href="index.html">Home<span class="lnr lnr-arrow-right"></span></a>
						<a href="category.html">Login/Register</a>
					</nav>
				</div>
			</div>
		</div>
	</section>
	<!-- End Banner Area -->

	<section class="menu-select-area container"
		style="width: 90%; background: wheat; height: 800px; border-radius: 2%;">


		<div class="wrap">
			<div class="tab_menu">
				<ul class="list" style="padding-left: 0px;">
					<li class="is_on"><a href="#tab1" class="btn">식사</a>
						<div id="tab1" class="cont" style="overflow-y: scroll;">
							<div class="flexx"
								style="display: flex; justify-content: space-around;">
								<div class="menu-info-box">

									<h3>떡볶이</h3>
									<p>3,500원</p>
									<div class="good-bad">
										<span><i class="fa-regular fa-thumbs-up"></i></span><span>89개</span>
									</div>

								</div>
								<div class="menu-img-box">
									<img src="pl1.jpg" alt="" style="width: 200px; height: 150px;">
								</div>
							</div>

							<div class="flexx"
								style="display: flex; justify-content: space-around;">
								<div class="menu-info-box">

									<h3>소떡소떡</h3>
									<p>2,000원</p>
									<div class="good-bad">
										<span><i class="fa-regular fa-thumbs-up"></i></span><span>18개</span>
									</div>

								</div>
								<div class="menu-img-box">
									<img src="pl1.jpg" alt="" style="width: 200px; height: 150px;">
								</div>
							</div>
							<div class="flexx"
								style="display: flex; justify-content: space-around;">
								<div class="menu-info-box">
									<h3>라면</h3>
									<p>4,000원</p>
									<div class="good-bad">
										<span><i class="fa-regular fa-thumbs-up"></i></span><span>11개</span>
									</div>

								</div>
								<div class="menu-img-box">
									<img src="pl1.jpg" alt="" style="width: 200px; height: 150px;">
								</div>
							</div>
							<div class="flexx"
								style="display: flex; justify-content: space-around;">
								<div class="menu-info-box">
									<h3>떡라면</h3>
									<p>4,500원</p>
									<div class="good-bad">
										<span><i class="fa-regular fa-thumbs-up"></i></span><span>5개</span>
									</div>

								</div>
								<div class="menu-img-box">
									<img src="pl1.jpg" alt="" style="width: 200px; height: 150px;">
								</div>
							</div>
							<div class="flexx"
								style="display: flex; justify-content: space-around;">
								<div class="menu-info-box">
									<h3>순대볶음</h3>
									<p>2,000원</p>
									<div class="good-bad">
										<span><i class="fa-regular fa-thumbs-up"></i></span><span>23개</span>
									</div>

								</div>
								<div class="menu-img-box">
									<img src="pl1.jpg" alt="" style="width: 200px; height: 150px;">
								</div>
							</div>
							<div class="flexx"
								style="display: flex; justify-content: space-around;">
								<div class="menu-info-box">
									<h3>통감자</h3>
									<p>3,500원</p>
									<div class="good-bad">
										<span><i class="fa-regular fa-thumbs-up"></i></span><span>12개</span>
									</div>

								</div>
								<div class="menu-img-box">
									<img src="pl1.jpg" alt="" style="width: 200px; height: 150px;">
								</div>
							</div>
						</div></li>
					<li><a href="#tab2" class="btn">간식 탭</a>
						<div id="tab2" class="cont">탭 2 간식 부분 출력</div></li>
					<li><a href="#tab3" class="btn">음료 탭</a>
						<div id="tab3" class="cont">탭 3 음료 부분 출력</div></li>
				</ul>
			</div>
		</div>
	</section>


	<!-- 띄울 메뉴창 -->

	<div class="container">
		<div id="popup" class="popup">
			<div class="popup-content">
				<span class="close" onclick="closePopup()">&times;</span>
				<p>어 형이야</p>
			</div>
		</div>
	</div>

	<div id="trigger" class="popup-click"></div>

	<!-- 팝업창을 제외한 나머지 body 영역 어두어지는 효과 -->
	<div class="overlay"></div>

	<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
</head>

<style>
.request-text-box {
	resize: none;
}

.request {
	height: 100px;
	background: #999;
	margin-bottom: 25px;
	margin-left: 25px;
	margin-right: 25px;
	align-items: center;
	border-radius: 2%;
}

.menu-modal-box-wrap {
	display: flex;
	justify-content: space-between;
	padding: 10px;
	box-sizing: border-box;
}

.menu-img {
	height: 200px;
	width: 150px;
	background: #999;
}

.menu-detail {
	height: 200px;
	width: 300px;
	background: #777;
}
</style>

<body>
	<!-- Button trigger modal -->
	<button type="button" class="btn btn-primary" data-bs-toggle="modal"
		data-bs-target="#exampleModal">Launch demo modal</button>

	<!-- Modal -->
	<div class="modal fade" id="exampleModal" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
			<div class="modal-content">
				<div class="modal-header">
					<h1 class="modal-title fs-5" id="exampleModalLabel">주문 상세</h1>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="menu-modal-box modal-body">
					<div class="menu-modal-box-wrap">
						<div class="menu-img">이미지</div>
						<div class="menu-detail">
							<article>
								<h4>떡볶이</h4>
								<p>가격 : 3,500원</p>
								<p></p>
							</article>

							<section class="menu-count"
								style="background: #555; height: 35px; width: 100%; display: flex;">
								<div class="menu-count-left"
									style="margin-left: 15px; margin-right: 15px;">
									<span> 수량 </span>
								</div>
								<div class="menu-count-right">
									<input type='button' onclick='count("plus")' value='+' /> <span
										id='result'>3</span> <input type='button'
										onclick='count("minus")' value='-' />
								</div>
							</section>

							<section class="menu-total"
								style="display: flex; justify-content: space-around; align-items: center;">
								<div>총합</div>
								<div>10,500원</div>
							</section>
						</div>
					</div>
				</div>
				
				<div class="request">
					<div>요청사항</div>
					<div style="height: 80px; width: 100%;">
						<textarea style="width: 100%; height: 100%;"
							class="request-text-box"></textarea>
					</div>
				</div>

				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-bs-dismiss="modal">닫기</button>
					<button type="button" class="btn btn-primary">장바구니 담기</button>
				</div>
			</div>
		</div>

		<script
			src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
			integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
			crossorigin="anonymous"></script>
</body>

</html>

<!-- start footer Area -->

<%@include file="./includes/footer.jsp"%>

<!-- End footer Area -->

<script>
	const tabList = document.querySelectorAll('.tab_menu .list li');
	for (var i = 0; i < tabList.length; i++) {
		tabList[i].querySelector('.btn').addEventListener('click', function(e) {
			e.preventDefault();
			for (var j = 0; j < tabList.length; j++) {
				tabList[j].classList.remove('is_on');
			}
			this.parentNode.classList.add('is_on');
		});
	}

	document.getElementById("trigger").addEventListener("click", function() {
		var popup = document.getElementById("popup");
		var overlay = document.querySelector(".overlay");
		var body = document.body;

		popup.style.display = "block";
		overlay.style.display = "block";
		body.classList.add("blur");
		body.style.overflow = "hidden";

		// 서서히 나타나는 애니메이션 적용
		setTimeout(function() {
			popup.style.opacity = "1";
		}, 50); // 약간의 지연 추가
	});

	function closePopup() {
		var popup = document.getElementById("popup");
		var overlay = document.querySelector(".overlay");
		var body = document.body;

		// 서서히 사라지는 애니메이션 적용
		popup.style.opacity = "0";

		// 애니메이션 시간만큼의 지연 추가
		setTimeout(function() {
			popup.style.display = "none";
			overlay.style.display = "none";
			body.classList.remove("blur");
			body.style.overflow = "";
		}, 300);
	}
</script>
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
</body>

</html>