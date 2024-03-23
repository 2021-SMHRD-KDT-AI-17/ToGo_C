<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
		String mb_id = (String)request.getAttribute("mb_id");
	%>
	
				<div id="wrapper">
				<!-- Menu -->
					<nav id="Update">	
						<ul class="actions vertical">
							<li><h1>환영합니다!</h1></li>
							<li>회원가입을 축하합니다.</li>
							<!-- Q2. 회원가입 한 회원정보 중 이메일을 출력하시오.(request영역 활용) -->
							<li>가입하신 id는 ${mb_id}입니다.</li>
							 <%-- <li>메세지시스템의 새로운 이메일은 ${email }입니다.</li> -> el문법사용--%> 
							<li><button onclick='location.href="goLogin"'>시작하기</button></li>
						</ul>
					</nav>			
			</div>
		<!-- Scripts -->
			<script src="resources/assets/js/jquery.min.js"></script>
			<script src="resources/assets/js/jquery.scrolly.min.js"></script>
			<script src="resources/assets/js/jquery.scrollex.min.js"></script>
			<script src="resources/assets/js/skel.min.js"></script>
			<script src="resources/assets/js/util.js"></script>
			<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
			<script src="resources/assets/js/main.js"></script>
	

</body>
</html>