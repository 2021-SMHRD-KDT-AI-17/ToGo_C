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
	background-color: #000000;
	color: #ffffff;
}

body[color-mode='light'] {
	background-color: #ffffff;
	color: #000000;
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
</head>
<body>

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
										href="goOrderHistory">주문내역</a></li>
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
										<!-- <div class="form-check form-switch">

											<input class="form-check-input" type="checkbox" role="switch"
												id="flexSwitchCheckDefault"> <label
												class="form-check-label" for="flexSwitchCheckDefault">
											</label> <input type="button" class="goStoresButton" id="dark-icon"
												value="다크모드">
										</div> -->
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
							<li class="nav-item submenu dropdown">
								<%
								if (loginMember == null) {
								%> <a href="goLogin" class="nav-link dropdown-toggle"
								data-toggle="dropdown" role="button" aria-haspopup="true"
								aria-expanded="false" style="text-align: right;">로그인 해주세요</a> <%
 } else {
 %>
							
							<li class="nav-item"><a href="goBasket" class="cart"> <i
									class="fa-solid fa-cart-shopping"></i></a></li>
							<li class="nav-item" style="text-align: right;"><a
								class="nav-link" href="#">환영합니다 <strong><%=loginMember.getMb_nick()%></strong>고객님!
							</a></li>
							<%
							}
							%>


							</li>



						</ul>
						<ul class="nav navbar-nav navbar-right">




							<!-- <li class="nav-item">
                        <button class="search"><span class="lnr lnr-magnifier" id="search"></span></button>
                     </li> -->
						</ul>
					</div>
				</div>
			</nav>
		</div>
		<!-- <div class="search_input" id="search_input_box">
         <div class="container">
            <form class="d-flex justify-content-between">
               <input type="text" class="form-control" id="search_input" placeholder="Search Here">
               <button type="submit" class="btn"></button>
               <span class="lnr lnr-cross" id="close_search" title="Close Search"></span>
            </form>
         </div>
      </div> -->
	</header>


	<script>
		document.addEventListener('DOMContentLoaded', function() {
			const toggleButton = document.getElementById('toggle-radio-dark');
			const body = document.body;

			toggleButton.addEventListener('change', function() {
				if (toggleButton.checked) {
					body.setAttribute('color-mode', 'dark');
				} else {
					body.setAttribute('color-mode', 'light');
				}
			});

			// 페이지 로드 시에도 다크 모드 설정을 확인하고 적용
			if (toggleButton.checked) {
				body.setAttribute('color-mode', 'dark');
			} else {
				body.setAttribute('color-mode', 'light');
			}
		});
	</script>

	<script src="https://kit.fontawesome.com/d97bdf4abd.js"
		crossorigin="anonymous"></script>
</body>
</html>