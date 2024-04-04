<%@page import="kr.smhrd.entity.Members"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	isELIgnored="false" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
body[color-mode='dark'] {
	background-color: #2B2B2B;
	transition: all ease-in-out .5s;
}

body[color-mode='light'] {
	ㄴ background-color: #FCFBF8;
	transition: all ease-in-out .5s;
}

@font-face {
	font-family: 'BMJUA_ttf';
	src: url("resources/assets/fonts/BMJUA_ttf.ttf");
	/* 	font-weight: normal;
	font-style: normal; */
}

span[color-mode='dark'] {
	color: #F7F7F7;
}

span[color-mode='light'] {
	color: #2B2B2B;
}

.service-search-icon {
	display: flex;
	justify-content: center;
	align-items: center;
	color: gray;
}

.navbar-toggler {
	margin-left: 15px;
}

.no-css {
	color: black !important;
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
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Noto+Sans+KR:wght@100..900&display=swap"
	rel="stylesheet">
</head>
<body style="font-family: BMJUA_ttf">

	<%
	Members loginMember = (Members) session.getAttribute("loginMember");
	%>

	<header class="header_area sticky-header">
		<div class="main_menu">
			<nav class="navbar navbar-expand-lg navbar-light main_box">
				<div class="container" style="margin: 10px">
					<!-- 3.26 브랜드 로고 수정 - 홍창민 -->
					<!-- Brand and toggle get grouped for better mobile display -->
					<a class="navbar-brand logo_h" href="goIndex"> <img
						src="resources/images/ToGoLogo.png" alt=""
						style="width: 55px; height: 35px;">
					</a>

					<div class="service-name" style="display: flex;">
						<div>
							<a href="goMap">
								<button type="button" class="btn btn-outline-secondary" disabled
									style="padding: 4px;">
									<span class="search-icon-span"><i
										class="fa-solid fa-magnifying-glass"></i></span>
									${select_area.getService_name() }
								</button>
							</a>
						</div>
					</div>



					<button class="navbar-toggler" type="button" data-toggle="collapse"
						data-target="#navbarSupportedContent"
						aria-controls="navbarSupportedContent" aria-expanded="false"
						aria-label="Toggle navigation">
						<span class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>


					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse offset"
						id="navbarSupportedContent">
						<ul class="nav navbar-nav menu_nav ml-auto">


							<!-- <li class="nav-item"><a class="nav-link" href="goLogin">빠른 주문</a></li> -->

							<li class="nav-item submenu dropdown"><a href="#"
								class="nav-link dropdown-toggle" data-toggle="dropdown"
								role="button" aria-haspopup="true" aria-expanded="false"
								style="font-weight: bold;">ToGo</a>
								<ul class="dropdown-menu">
									<li class="nav-item"><a class="nav-link no-css"
										href="category.html">브랜드 소개</a></li>
									<li class="nav-item"><a class="nav-link no-css"
										href="single-product.html">기대 발전 방향 </a></li>
									<li class="nav-item"><a class="nav-link no-css"
										href="checkout.html">환경 운동</a></li>
								</ul></li>


							<li class="nav-item submenu dropdown"><a href="#"
								class="nav-link dropdown-toggle" data-toggle="dropdown"
								role="button" aria-haspopup="true" aria-expanded="false"
								class="no-css" style="font-weight: bold;">마이 페이지</a>
								<ul class="dropdown-menu">
									<%
									if (loginMember == null) {
									%>
									<li class="nav-item"><a class="nav-link no-css"
										href="goLogin">로그인</a></li>
									<li class="nav-item"><a class="nav-link no-css"
										href="goJoin">회원가입</a></li>
									<%
									} else {
									%>
									<li class="nav-item"><a class="nav-link no-css"
										href="goOrderHistory?mb_id=<%=loginMember.getMb_id()%>">주문내역</a></li>
									<li class="nav-item"><a class="nav-link no-css"
										href="showUpdate">회원 정보 수정</a></li>
									<li class="nav-item"><a class="nav-link no-css"
										href="deletePage">회원탈퇴</a></li>
									<li class="nav-item"><a class="nav-link no-css"
										href="membersLogout">로그 아웃 </a></li>
									<%
									}
									%>
								</ul></li>

							<!-- 3.24 로그인 해주세요 / 만약 로그인에 성공했다면 OOO 님 환영합니다! 로 변경 -홍창민 -->
							<li></li>
							<li></li>
							<li class="nav-item submenu dropdown"><a href="#"
								class="nav-link dropdown-toggle" data-toggle="dropdown"
								role="button" aria-haspopup="true" aria-expanded="false"
								style="font-weight: bold;">다크모드</a>
								<ul class="dropdown-menu">
									<li class="nav-item">
										<div class="wrap">
											<div class="darkmode">
												<div class="inner">
													<input type="radio" name="toggle" id="toggle-radio-light"
														checked><label for="toggle-radio-light"
														class="tolight"><i class="fas fa-sun tolight"></i></label>
													<input type="radio" name="toggle" id="toggle-radio-dark"><label
														for="toggle-radio-dark" class="todark"><i
														class="fas fa-moon todark"></i></label>
													<div class="darkmode-bg"></div>
												</div>
											</div>
										</div>
									</li>
								</ul>
							<li class="nav-item submenu dropdown" style="text-align: right;">
								<%
								if (loginMember == null) {
								%> <a href="goLogin" class="nav-link dropdown-toggle"
								data-toggle="dropdown" role="button" aria-haspopup="true"
								aria-expanded="false">로그인 해주세요</a> <%
 } else {
 %>
							
							<li class="nav-item"><a href="goBasket" class="cart"> <i
									class="fa-solid fa-cart-shopping" style="color: black;"></i></a></li>
							<li class="nav-item" style="text-align: right;"><a
								class="nav-link" href="#">환영합니다 <strong><%=loginMember.getMb_nick()%></strong>고객님!
							</a></li>
							<%
							}
							%>

							</li>

						</ul>
						<ul class="nav navbar-nav navbar-right">
	</header>


	<script>
		document.addEventListener('DOMContentLoaded', function() {
			const toggleButton = document.getElementById('toggle-radio-dark');
			const sunButton = document.getElementById('toggle-radio-light');
			const body = document.body;

			function enableDarkMode() {
				body.setAttribute('color-mode', 'dark');

				const fontWhiteElements = document
						.querySelectorAll('.font-white');
				fontWhiteElements.forEach(function(element) {
					element.style.color = '#fff';
				});
				localStorage.setItem('color-mode', 'dark');
			}

			// Dark Mode 비활성화 함수
			function disableDarkMode() {
				body.setAttribute('color-mode', 'light');

				const fontWhiteElements = document
						.querySelectorAll('.font-white');
				fontWhiteElements.forEach(function(element) {

					element.style.color = '';
				});
				localStorage.setItem('color-mode', 'light');
			}

			const colorMode = localStorage.getItem('color-mode');
			if (colorMode === 'dark') {
				body.setAttribute('color-mode', 'dark');
				toggleButton.checked = true;
				enableDarkMode();
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

			sunButton.addEventListener('change', function() {
				disableDarkMode();
			});
		});
	</script>

</body>
</html>