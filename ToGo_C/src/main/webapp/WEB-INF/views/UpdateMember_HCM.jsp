<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css">

<style>
        .updateMember {
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            width: 100%;
            height: 500px;
            margin-top: 200px;
            margin-bottom:200px;

        }

        .accordion {
            width: 400px;
        }
        .accordion-body {
            display: flex;
            /* justify-content: space-between; */
        }
        .home-submit{
            display: flex;
            justify-content: space-around;
            
            
        }
        .home-submit div{
            padding: 20px;          
        }
    </style>
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
	<link rel="stylesheet" href="resources/assets/css/ion.rangeSlider.skinFlat.css" />
	<link rel="stylesheet" href="resources/assets/css/magnific-popup.css">
	<link rel="stylesheet" href="resources/assets/css/main.css">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

</head>
<body>

	<!-- Start Header Area -->

	<%@include file="./includes/header.jsp"%>

	<!-- End Header Area -->

	<div class="updateMember">

        <h1> 회원 정보 수정</h1>
        <p> 접속한 아이디 : ${loginMember.mb_id}</p>
        <p> 가입 일자 : ${loginMember.joined_at}</p>
        <form action="memberUpdate" method="post">
            <div class="accordion" id="">
                <div class="accordion-item">
                    <h2 class="accordion-header">
                        <button class="accordion-button" type="button" data-bs-toggle="collapse"
                            data-bs-target="#panelsStayOpen-collapseOne" aria-expanded="false"
                            aria-controls="panelsStayOpen-collapseOne">
                            비밀번호 변경
                        </button>
                    </h2>
                    <div id="panelsStayOpen-collapseOne" class="accordion-collapse collapse show">
                        <div class="accordion-body">
                            <div class="accordion-body-left">
                                <strong>비밀번호 입력 : </strong>
                            </div>
                            <div class="accordion-body-right">
                                <input type="password" name="mb_pw" id="mb_pw" class="form-input" 
                                    style="width: 200px; margin-left: 10px;">
                            </div>
                            <div class="eyes">
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
                            aria-controls="panelsStayOpen-collapseOne">
                            닉네임 변경
                        </button>
                    </h2>
                    <div id="panelsStayOpen-collapseOne" class="accordion-collapse collapse show">
                        <div class="accordion-body">
                            <div class="accordion-body-left">
                                <strong>닉네임 입력 : </strong>
                            </div>
                            <div class="accordion-body-right">
                                <input type="text" name="mb_nick" id="mb_nick" class="form-input"
                                    style="width: 200px; margin-left: 10px;">
                            </div>
                            

                        </div>
                    </div>
                </div>
                <div class="accordion-item">
                    <h2 class="accordion-header">
                        <button class="accordion-button" type="button" data-bs-toggle="collapse"
                            data-bs-target="#panelsStayOpen-collapseOne" aria-expanded="false"
                            aria-controls="panelsStayOpen-collapseOne">
                            핸드폰 번호
                        </button>
                    </h2>
                    <div id="panelsStayOpen-collapseOne" class="accordion-collapse collapse show">
                        <div class="accordion-body">
                            <div class="accordion-body-left">
                                <strong>핸드폰 번호 입력 : </strong>
                            </div>
                            <div class="accordion-body-right">
                                <input type="text" name="mb_phone" id="mb_phone" class="form-input"
                                    style="width: 200px; margin-left: 10px;">
                            </div>

                           
                        </div>
                    </div>
                </div>
                
            </div>
            <div class="home-submit">
                <div class="home-button">
                    <button type="button" class="btn btn-outline-secondary">홈 화면으로</button>
                </div>
                <div class="submit-button">
                    <button type="button" class="btn btn-primary">변경 내용 저장</button>
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



    </script>


    
	
	<!-- start footer Area -->

	<%@include file="./includes/footer.jsp"%>

	<!-- End footer Area -->

	
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