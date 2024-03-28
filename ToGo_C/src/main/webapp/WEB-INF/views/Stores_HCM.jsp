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

span{
	padding: 0 10px 0 10px;
}
.flexx{
	align-items: center;
	padding: 10px;
	border-bottom: 1px solid #999;

}

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
		style="width: 90%; background: wheat; height: 800px; border-radius: 2%;" >


		<div class="wrap">
			<div class="tab_menu">
				<ul class="list" style="padding-left: 0px;">
					<li class="is_on"><a href="#tab1" class="btn">식사</a>
						<div id="tab1" class="cont" style="overflow-y: scroll;" >
							<div class="flexx" style="display: flex; justify-content: space-around;">
								<div class="menu-info-box" >
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
							
							<div class="flexx" style="display: flex; justify-content: space-around;">
								<div class="menu-info-box" >
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
							<div class="flexx" style="display: flex; justify-content: space-around;">
								<div class="menu-info-box" >
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
							<div class="flexx" style="display: flex; justify-content: space-around;">
								<div class="menu-info-box" >
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
							<div class="flexx" style="display: flex; justify-content: space-around;">
								<div class="menu-info-box" >
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
							<div class="flexx" style="display: flex; justify-content: space-around;">
								<div class="menu-info-box" >
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
						</div>
					</li>
					<li><a href="#tab2" class="btn">간식 탭</a>
						<div id="tab2" class="cont">탭 2 간식 부분 출력
						
						</div></li>
					<li><a href="#tab3" class="btn">음료 탭</a>
						<div id="tab3" class="cont">탭 3 음료 부분 출력
						
						</div></li>
				</ul>
			</div>
		</div>
	</section>



	<!-- start footer Area -->

	<%@include file="./includes/footer.jsp"%>

	<!-- End footer Area -->

	<script>
		const tabList = document.querySelectorAll('.tab_menu .list li');
		for (var i = 0; i < tabList.length; i++) {
			tabList[i].querySelector('.btn').addEventListener('click',
					function(e) {
						e.preventDefault();
						for (var j = 0; j < tabList.length; j++) {
							tabList[j].classList.remove('is_on');
						}
						this.parentNode.classList.add('is_on');
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
		
	<script src="https://kit.fontawesome.com/d97bdf4abd.js" crossorigin="anonymous"></script>
</body>

</html>