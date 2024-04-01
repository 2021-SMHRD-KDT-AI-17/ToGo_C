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

</head>
<style>


.go-login-button{
	display: inline-block;
	width:240px;
	height: 40px;
	border: 1px solid black;
	font-size: 16px;
	font-weight: 900;
	border-radius: 10px;
	box-shadow: 1px 1px 1px 0px black;
	background: rgb(182, 198, 159);
}
	
}


#Update>ul.actions {
   margin-top: 10%;
}

.welcome-img{
   margin-top:100px;
   width:350px;
   height:300px;
}

#wrapper{
   display:flex;
   justify-content: center;
   padding: 50px;
   
}

</style>
<body>

	<%
	Members join_member = (Members) session.getAttribute("join_member");
	%>

   <!-- 헤더 영역 시작(includes 폴더) - 홍창민 -->

   <%@include file="./includes/header.jsp"%>
   

   <!-- 헤더 영역 끝 -->

   <div id="wrapper">

      <section>
         <div>
            <img src="resources/images/Welcome.jpg" alt="" class="welcome-img">
         </div>

         <div>
            <ul class="list-group list-group-flush" style="text-align: center;">
               <li class="list-group-item"><h2>어서오세요 <br><%= join_member.getMb_nick()%>고객님!</h2></li>
               <li class="list-group-item">회원가입을 축하합니다.</li>
               <li class="list-group-item" style="margin-bottom:10px;">가입 일자 : &nbsp;<%= join_member.getJoined_at()%> </li>
               <li><button onclick='location.href="goLogin"' class="go-login-button">시작하기</button></li>
            </ul>
         </div>
      </section>
   </div>

   
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

