<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Forty by HTML5 UP</title>
<meta charset="UTF-8" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
<link rel="stylesheet" href="resources/assets/css/main.css" />
<!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->

</head>
<style>
#Update>ul.actions {
	margin-top: 10%;
}
</style>
<body>

	<%
	Members loginMember =(Members)session.getAttribute("loginMember");
	%>

	<!-- 헤더 영역 시작(includes 폴더) - 홍창민 -->

	<%@include file="./includes/header.jsp"%>

	<!-- 헤더 영역 끝 -->

	<div id="wrapper">

		<section>
			<div>
				<img src="resources/images/Welcome.jpg" alt="">
			</div>

			<div>
				<ul class="list-group list-group-flush">
					<li class="list-group-item"><h1>환영합니다 ${ } 고객님!</h1></li>
					<li class="list-group-item">회원가입을 축하합니다.</li>
					<li class="list-group-item">가입 일자 : ${ }</li>
					<li><button onclick='location.href="goLogin"'>시작하기</button></li>
				</ul>
			</div>
		</section>
	</div>

	<%-- <!-- Wrapper -->
			<div id="wrapper">
				<!-- Menu -->
					<nav id="Update">	
						<ul class="actions vertical">
							<li><h1>환영합니다!</h1></li>
							<li>회원가입을 축하합니다.</li>
							<!-- Q2. 회원가입 한 회원정보 중 이메일을 출력하시오.(request영역 활용) -->
							<li>메세지시스템의 새로운 이메일은 <%=email %>입니다.</li>
							<li>메세지시스템의 새로운 이메일은 ${email }입니다.</li> -> el문법사용 
							<li><button onclick='location.href="goMain"'>시작하기</button></li>
						</ul>
					</nav>			
			</div> --%>

	<%@include file="./includes/footer.jsp"%>
	<!-- Scripts -->
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

