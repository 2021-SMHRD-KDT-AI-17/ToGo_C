<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

		<header class="header_area sticky-header">
		<div class="main_menu">
			<nav class="navbar navbar-expand-lg navbar-light main_box">
				<div class="container">
					<!-- Brand and toggle get grouped for better mobile display -->
					<a class="navbar-brand logo_h" href="goIndex"><img src="resources/images/logo.png" alt=""></a>
					
					<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
					 aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					
					
					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse offset" id="navbarSupportedContent">
						<ul class="nav navbar-nav menu_nav ml-auto">
							
							
							<!-- <li class="nav-item"><a class="nav-link" href="goLogin">빠른 주문</a></li> -->
							
							<li class="nav-item submenu dropdown">
								<a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
								 aria-expanded="false">ToGo</a>
								<ul class="dropdown-menu">
									<li class="nav-item"><a class="nav-link" href="category.html">브랜드 소개</a></li>
									<li class="nav-item"><a class="nav-link" href="single-product.html">기대 발전 방향 </a></li>
									<li class="nav-item"><a class="nav-link" href="checkout.html">환경 운동</a></li>
								</ul>
							</li>
							
							
							<li class="nav-item submenu dropdown">
								<a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
								 aria-expanded="false">마이 페이지</a>
								<ul class="dropdown-menu">
									<li class="nav-item"><a class="nav-link" href="goLogin">로그인</a></li>
<!-- 회원가입 부분 추가 - 임명택 -->
									<li class="nav-item"><a class="nav-link" href="goJoin">회원가입</a></li>
									<li class="nav-item"><a class="nav-link" href="tracking.html">회원 정보 수정</a></li>
									<li class="nav-item"><a class="nav-link" href="elements.html">로그 아웃 </a></li>
								</ul>
							</li>
							
							<!-- 3.24 로그인 해주세요 / 만약 로그인에 성공했다면 OOO 님 환영합니다! 로 변경 -홍창민 -->
							
							<li></li>
							<li></li>
							
							<li class="nav-item submenu dropdown">
								<a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
								 aria-expanded="false">로그인 해주세요</a>	
							</li>
							
						</ul>
						<ul class="nav navbar-nav navbar-right">
						
							
									
							<li class="nav-item"><a href="#" class="cart"><span class="ti-bag"></span></a></li>
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
	

</body>
</html>