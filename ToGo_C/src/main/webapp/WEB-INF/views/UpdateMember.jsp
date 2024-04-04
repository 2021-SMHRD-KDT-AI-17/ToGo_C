<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx" class="no-js">

<head>
<!-- Mobile Specific Meta -->
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- Favicon-->
<link rel="shortcut icon" href="resources/images/favicon-logo.png">
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

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
<link
	rel="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css">
<!--
      CSS
      ============================================= -->
<link rel="stylesheet" href="resources/assets/css/linearicons.css">
<link rel="stylesheet" href="resources/assets/css/font-awesome.min.css">
<link rel="stylesheet" href="resources/assets/css/themify-icons.css">

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
<style>

@font-face {
	font-family: 'BMJUA_ttf';
	src: url("resources/assets/fonts/BMJUA_ttf.ttf");
	font-weight: normal;
	font-style: normal;
}

h1,p, button{
	font-family: 'BMJUA_ttf';
}

.updateMember {
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
	width: 100%;
	height: 500px;
	margin-top: 150px;
}

.h1-tag {
	padding: 20px 0px 40px 0px;
}

.p-tag {
	text-align: left;
	width: 90%;
	font-size: 15px;
	font-weight: 800;
	color: #6E6E6E;
}

.accordion {
	width: 400px;
}

.accordion-body {
	display: flex;
	justify-content: space-between;
	height: 70px;
	padding-top: 23px;
}

.accordion-body-left {
	align-items: center;
}

.accordion-button {
	background: green;
	font-weight: bold;
}

.home-submit {
	display: flex;
	justify-content: center;
}

.home-submit div {
	padding: 30px 0px 0px 15px;
}

.eyes, .fa-eye {
	position: relative;
}

.fa-eye {
	position: absolute;
	top: 14px;
	right: 8px;
}

.font-align1 {
	position: relative;
	left: 35px;
	top:4px;
	font-family: 'BMJUA_ttf';
}

.font-align2 {
	position: relative;
	left: 50px;
	top:4px;
	font-family: 'BMJUA_ttf';
}

.font-align3 {
	position: relative;
	left: 20px;
	top:4px;
	font-family: 'BMJUA_ttf';
}

.go-home-save-button {
	text-align: center;
	font-family: 'BMJUA_ttf';
	padding: 5px 10px 5px 10px;
	font-size: 17px;
	width:150px;
	text-decoration: none;
	border-radius: 10px;
	background: #FFFFD4;
	box-shadow: 2px 3px 1px 0px black;
}

.form-input{
	border-radius: 5px;
	border: 1px solid #D4D4D4; 
	padding: 4px;
	font-size: 14px;
}
</style>


</head>
<body
	style="height: 0px; background: #FDFDF9;>

   <!-- Start Header Area -->

   <%@include file="./includes/header.jsp"%>

   <!-- End Header Area -->

   <div class="updateMember">

        <h1 class="h1-tag"> 회원 정보 수정</h1>
        <p class="p-tag"> 접속한 아이디 : ${loginMember.mb_id}</p>
        <p class="p-tag"> 가입 일자 : ${loginMember.joined_at}</p>
        <form action="memberUpdate" method="post">
       <input type="hidden" name="mb_id" value="${loginMember.mb_id}">
            <div class="accordion" id="">
                <div class="accordion-item">
                    <h2 class="accordion-header">
                        <button class="accordion-button" type="button" data-bs-toggle="collapse"
                            data-bs-target="#panelsStayOpen-collapseOne" aria-expanded="false"
                            aria-controls="panelsStayOpen-collapseOne"
                            style="background: rgb(182, 198, 159); ">
                            비밀번호 변경
                        </button>
                    </h2>
                    <div id="panelsStayOpen-collapseOne" class="accordion-collapse collapse show">
                        <div class="accordion-body">
                            <div class="accordion-body-left">
                                <strong class="font-align1">비밀번호 입력 : </strong>
                            </div>
                            <div class="accordion-body-right eyes">
                                <input type="password" name="mb_pw" id="mb_pw" class="form-input" placeholder="PW를 입력하세요"
                                    style="width: 200px; margin-left: 10px;">
                                <i class="fa fa-eye fa-lg"></i>
                            </div>
                            <!-- <div class="input password">
                                <label for="password"class="label password">비밀번호</label>
                                <input type="password" id="password" class="form-input" placeholder="비밀번호를 입력해주세요.">
                                <div class="eyes">
                                    <i class="fa fa-eye fa-lg"></i>
                                </div>
                            </div> -->

                        </div>
                    </div>
                </div>
                <div class="accordion-item">
                    <h2 class="accordion-header">
                        <button class="accordion-button" type="button" data-bs-toggle="collapse"
                            data-bs-target="#panelsStayOpen-collapseOne" aria-expanded="false"
                            aria-controls="panelsStayOpen-collapseOne"
                            style="background: rgb(182, 198, 159);">
                            닉네임 변경
                        </button>
                    </h2>
                    <div id="panelsStayOpen-collapseOne" class="accordion-collapse collapse show">
                        <div class="accordion-body">
                            <div class="accordion-body-left">
                                <strong class="font-align2">닉네임 입력 : </strong>
                            </div>
                            <div class="accordion-body-right">
                                <input type="text" name="mb_nick" id="mb_nick" class="form-input" value="${loginMember.mb_nick}" placeholder="변경할 닉네임을 입력하세요"
                                    style="width: 200px;">
                            </div>
                            

                        </div>
                    </div>
                </div>
                <div class="accordion-item">
                    <h2 class="accordion-header">
                        <button class="accordion-button" type="button" data-bs-toggle="collapse"
                            data-bs-target="#panelsStayOpen-collapseOne" aria-expanded="false"
                            aria-controls="panelsStayOpen-collapseOne"
                            style="background: rgb(182, 198, 159);">
                            핸드폰 번호
                        </button>
                    </h2>
                    <div id="panelsStayOpen-collapseOne" class="accordion-collapse collapse show">
                        <div class="accordion-body">
                            <div class="accordion-body-left">
                                <strong class="font-align3">핸드폰 번호 입력 : </strong>
                            </div>
                            <div class="accordion-body-right">
                                <%-- <input type="text" name="mb_phone" id="mb_phone" class="form-input" value="${loginMember.mb_phone}" placeholder="전화번호를 입력하세요"
                                    style="width: 150px; margin-left: 10px;"> --%>
                                <input type="text" id="mb_phone" class="form-input" value="${loginMember.mb_phone}" placeholder="전화번호를 입력하세요"
									style="width: 200px; margin-left: 10px;"		
											oninput="oninputPhone(this)" maxlength="13">
                            </div>

                           
                        </div>
                    </div>
                </div>
                
            </div>
            <div class="home-submit">
                <div class="home-button">
                    <button type="button" class="go-home-save-button">홈 화면으로</button>
                </div>
                <div class="submit-button">
                    <input type="submit" value="변경내용저장" class="go-home-save-button"></input>
                </div>

            </div>
            

        </form>


    </div>
    <script>
        $(function () {
            // 눈표시 클릭 시 패스워드 보이기
            $('.eyes').on('click', function () {
                $('.input.password').toggleClass('active');

                if ($('.input.password').hasClass('active') == true) {
                    $(this).find('.fa-eye').attr('class', "fa fa-eye-slash fa-lg").parents('.input').find('#password').attr('type', "text");
                    // i 클래스                // 텍스트 보이기 i 클래스
                }
                else {
                    $(this).find('.fa-eye-slash').attr('class', "fa fa-eye fa-lg").parents('.input').find('#password').attr('type', 'password');
                }
            });
        });
        
        
        function oninputPhone(target) {
    	    target.value = target.value
    	        .replace(/[^0-9]/g, '')
    	        .replace(/(^02.{0}|^01.{1}|[0-9]{3,4})([0-9]{3,4})([0-9]{4})/g, "$1-$2-$3");
    	}



   </script>   
   <script src="https://kit.fontawesome.com/d97bdf4abd.js" crossorigin="anonymous"></script>
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
   <script src="resources/assets/js/vender/jquery-2.2.4.min.js"></script>
   <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4"
    crossorigin="anonymous"></script>
   <script src="resources/assets/js/vender/bootstrap.min.js"></script>
   <script src="resources/assets/js/jquery.ajaxchimp.min.js"></script>
   <script src="resources/assets/js/jquery.nice-select.min.js"></script>
   <script src="resources/assets/js/jquery.sticky.js"></script>
   <script src="resources/assets/js/nouislider.min.js"></script>
   <script src="resources/assets/js/countdown.js"></script>
   <script src="resources/assets/js/jquery.magnific-popup.min.js"></script>
   <script src="resources/assets/js/owl.carousel.min.js"></script>
   <script src="resources/assets/js/main.js"></script>
   <script src="checkout.js"></script></body>
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
</body>
</html>