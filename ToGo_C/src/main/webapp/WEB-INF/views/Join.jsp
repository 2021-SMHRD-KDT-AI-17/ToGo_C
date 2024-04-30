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
<title>회원가입</title>

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
<!-- 3.24 bootstrap.min.css cdn 링크 추가 - 홍창민 -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">

<link rel="canonical"
	href="https://getbootstrap.com/docs/5.3/examples/checkout/">

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/@docsearch/css@3">


<style>
.bd-placeholder-img {
	font-size: 1.125rem;
	text-anchor: middle;
	-webkit-user-select: none;
	-moz-user-select: none;
	user-select: none;
}

@font-face {
	font-family: 'BMJUA_ttf';
	src: url("resources/assets/fonts/BMJUA_ttf.ttf");
	font-style: normal;
}

.id-check-button {
	margin-top: 5px;
	width: 90px;
	height: 25px;
	border: 1px solid black;
	font-size: 13px;
	font-weight: 900;
	border-radius: 10px;
	box-shadow: 1px 1px 1px 0px black;
	margin-top: 5px;
	background: white;
}

.join-submit-button {
	width: 250px;
	height: 50px;
	border: 1px solid black;
	font-size: 16px;
	font-weight: 900;
	border-radius: 10px;
	box-shadow: 1px 1px 1px 0px black;
	background: #FFFFD4;
	color: black;
}

#resultCheck {
	color: blue;
}

.input-group-text {
	/* background: rgb(182, 198, 159); */
	background: linear-gradient(62deg, #c2e59c, #64b3f4);
	border: 1px solid lightgray;
}

@media ( min-width : 768px) {
	.bd-placeholder-img-lg {
		font-size: 3.5rem;
	}
}

.b-example-divider {
	width: 100%;
	height: 3rem;
	background-color: rgba(0, 0, 0, .1);
	border: solid rgba(0, 0, 0, .15);
	border-width: 1px 0;
	box-shadow: inset 0 .5em 1.5em rgba(0, 0, 0, .1), inset 0 .125em .5em
		rgba(0, 0, 0, .15);
}

.b-example-vr {
	flex-shrink: 0;
	width: 1.5rem;
	height: 100vh;
}

.bi {
	vertical-align: -.125em;
	fill: currentColor;
}

.nav-scroller {
	position: relative;
	z-index: 2;
	height: 2.75rem;
	overflow-y: hidden;
}

.nav-scroller .nav {
	display: flex;
	flex-wrap: nowrap;
	padding-bottom: 1rem;
	margin-top: -1px;
	overflow-x: auto;
	text-align: center;
	white-space: nowrap;
	-webkit-overflow-scrolling: touch;
}

.btn-bd-primary { -
	-bd-violet-bg: #712cf9; -
	-bd-violet-rgb: 112.520718, 44.062154, 249.437846; -
	-bs-btn-font-weight: 600; -
	-bs-btn-color: var(- -bs-white); -
	-bs-btn-bg: var(- -bd-violet-bg); -
	-bs-btn-border-color: var(- -bd-violet-bg); -
	-bs-btn-hover-color: var(- -bs-white); -
	-bs-btn-hover-bg: #6528e0; -
	-bs-btn-hover-border-color: #6528e0; -
	-bs-btn-focus-shadow-rgb: var(- -bd-violet-rgb); -
	-bs-btn-active-color: var(- -bs-btn-hover-color); -
	-bs-btn-active-bg: #5a23c8; -
	-bs-btn-active-border-color: #5a23c8;
}

.bd-mode-toggle {
	z-index: 1500;
}

.bd-mode-toggle .dropdown-menu .active .bi {
	display: block !important;
}

.main-container {
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
	padding: 40px;
}
</style>

<!-- 3.23 회원 가입을 창을 위한 css 파일 추가 
	.main-container : 세로 정렬 속성 부여
- 홍창민 -->
<link href="resources/assets/css/checkout.css" rel="stylesheet">

</head>
<body>


	<!-- 헤더 영역 시작(includes 폴더) - 홍창민 -->

	<%@include file="./includes/header.jsp"%>

	<!-- 헤더 영역 끝 -->


	<!-- 회원가입 영역 시작 -홍창민 -->

	<svg xmlns="http://www.w3.org/2000/svg" class="d-none">
      <symbol id="check2" viewBox="0 0 16 16">
        <path
			d="M13.854 3.646a.5.5 0 0 1 0 .708l-7 7a.5.5 0 0 1-.708 0l-3.5-3.5a.5.5 0 1 1 .708-.708L6.5 10.293l6.646-6.647a.5.5 0 0 1 .708 0z" />
      </symbol>
      <symbol id="circle-half" viewBox="0 0 16 16">
        <path
			d="M8 15A7 7 0 1 0 8 1v14zm0 1A8 8 0 1 1 8 0a8 8 0 0 1 0 16z" />
      </symbol>
      <symbol id="moon-stars-fill" viewBox="0 0 16 16">
        <path
			d="M6 .278a.768.768 0 0 1 .08.858 7.208 7.208 0 0 0-.878 3.46c0 4.021 3.278 7.277 7.318 7.277.527 0 1.04-.055 1.533-.16a.787.787 0 0 1 .81.316.733.733 0 0 1-.031.893A8.349 8.349 0 0 1 8.344 16C3.734 16 0 12.286 0 7.71 0 4.266 2.114 1.312 5.124.06A.752.752 0 0 1 6 .278z" />
        <path
			d="M10.794 3.148a.217.217 0 0 1 .412 0l.387 1.162c.173.518.579.924 1.097 1.097l1.162.387a.217.217 0 0 1 0 .412l-1.162.387a1.734 1.734 0 0 0-1.097 1.097l-.387 1.162a.217.217 0 0 1-.412 0l-.387-1.162A1.734 1.734 0 0 0 9.31 6.593l-1.162-.387a.217.217 0 0 1 0-.412l1.162-.387a1.734 1.734 0 0 0 1.097-1.097l.387-1.162zM13.863.099a.145.145 0 0 1 .274 0l.258.774c.115.346.386.617.732.732l.774.258a.145.145 0 0 1 0 .274l-.774.258a1.156 1.156 0 0 0-.732.732l-.258.774a.145.145 0 0 1-.274 0l-.258-.774a1.156 1.156 0 0 0-.732-.732l-.774-.258a.145.145 0 0 1 0-.274l.774-.258c.346-.115.617-.386.732-.732L13.863.1z" />
      </symbol>
      <symbol id="sun-fill" viewBox="0 0 16 16">
        <path
			d="M8 12a4 4 0 1 0 0-8 4 4 0 0 0 0 8zM8 0a.5.5 0 0 1 .5.5v2a.5.5 0 0 1-1 0v-2A.5.5 0 0 1 8 0zm0 13a.5.5 0 0 1 .5.5v2a.5.5 0 0 1-1 0v-2A.5.5 0 0 1 8 13zm8-5a.5.5 0 0 1-.5.5h-2a.5.5 0 0 1 0-1h2a.5.5 0 0 1 .5.5zM3 8a.5.5 0 0 1-.5.5h-2a.5.5 0 0 1 0-1h2A.5.5 0 0 1 3 8zm10.657-5.657a.5.5 0 0 1 0 .707l-1.414 1.415a.5.5 0 1 1-.707-.708l1.414-1.414a.5.5 0 0 1 .707 0zm-9.193 9.193a.5.5 0 0 1 0 .707L3.05 13.657a.5.5 0 0 1-.707-.707l1.414-1.414a.5.5 0 0 1 .707 0zm9.193 2.121a.5.5 0 0 1-.707 0l-1.414-1.414a.5.5 0 0 1 .707-.707l1.414 1.414a.5.5 0 0 1 0 .707zM4.464 4.465a.5.5 0 0 1-.707 0L2.343 3.05a.5.5 0 1 1 .707-.707l1.414 1.414a.5.5 0 0 1 0 .708z" />
      </symbol>
    </svg>

	<div
		class="dropdown position-fixed bottom-0 end-0 mb-3 me-3 bd-mode-toggle">
		<!-- <button
			class="btn btn-bd-primary py-2 dropdown-toggle d-flex align-items-center"
			id="bd-theme" type="button" aria-expanded="false"
			data-bs-toggle="dropdown" aria-label="Toggle theme (auto)">
			<svg class="bi my-1 theme-icon-active" width="1em" height="1em">
				<use href="#circle-half"></use></svg>
			<span class="visually-hidden" id="bd-theme-text">Toggle theme</span>
		</button> -->
		<ul class="dropdown-menu dropdown-menu-end shadow"
			aria-labelledby="bd-theme-text">
			<li>
				<button type="button"
					class="dropdown-item d-flex align-items-center"
					data-bs-theme-value="light" aria-pressed="false">
					<svg class="bi me-2 opacity-50" width="1em" height="1em">
						<use href="#sun-fill"></use></svg>
					Light
					<svg class="bi ms-auto d-none" width="1em" height="1em">
						<use href="#check2"></use></svg>
				</button>
			</li>
			<li>
				<button type="button"
					class="dropdown-item d-flex align-items-center"
					data-bs-theme-value="dark" aria-pressed="false">
					<svg class="bi me-2 opacity-50" width="1em" height="1em">
						<use href="#moon-stars-fill"></use></svg>
					Dark
					<svg class="bi ms-auto d-none" width="1em" height="1em">
						<use href="#check2"></use></svg>
				</button>
			</li>
			<li>
				<button type="button"
					class="dropdown-item d-flex align-items-center active"
					data-bs-theme-value="auto" aria-pressed="true">
					<svg class="bi me-2 opacity-50" width="1em" height="1em">
						<use href="#circle-half"></use></svg>
					Auto
					<svg class="bi ms-auto d-none" width="1em" height="1em">
						<use href="#check2"></use></svg>
				</button>
			</li>
		</ul>
	</div>


	<div class="container">
		<main class="main-container">
			<div class="py-5 text-center"
				style="background: rgb(182, 198, 159); height: 460px;">
				<img class="d-block mx-auto mb-4"
					src="resources/images/summer-2880261_1280.jpg" alt=""
					style="width: 400px; height: 300px;">
				<h2>ToGo 회원가입</h2>
				<p class="lead" style="text-align: center">Welcome!</p>

			</div>


			<div class="col-md-7 col-lg-8">
				<div class="mb-3" style="margin-top: 50px;"></div>

				<form action="membersInsert" method="post" class="needs-validation"
					novalidate>
					<div class="row g-3">

						<div class="col-12">
							<label for="inputId" class="form-label">아이디</label>
							<div class="input-group has-validation">
								<span class="input-group-text"><i
									class="fa-solid fa-fish"></i></span> <input type="text"
									class="form-control" id="inputId" placeholder="id를 입력해주세요"
									required name="mb_id"
									style="font-family: sans-serif; font-size: 14px; font-weight: bold;">
								<div class="invalid-feedback">*아이디 입력은 필수사항입니다.</div>

								<!-- ID중복확인 -->

							</div>
							<p align="right">
								<input type="button" value="ID 중복체크" onclick="checkId()"
									class="id-check-button">
							</p>
							<p>
								<span id="resultCheck"></span>
							</p>
						</div>

						<div class="col-12">
							<label for="mb_pw" class="form-label">비밀번호</label>
							<div class="input-group has-validation">
								<span class="input-group-text"><i class="fa-solid fa-key"></i></i></span>
								<input type="password" class="form-control" id="mb_pw"
									placeholder="pw를 입력해주세요" name="mb_pw" required
									style="font-family: sans-serif; font-size: 14px; font-weight: bold;">
								<div class="invalid-feedback">*비밀번호 입력은 필수사항입니다.</div>
							</div>
						</div>

						<!-- <div class="col-12">
							<label for="mb_pw" class="form-label">비밀번호 확인</label>
							<div class="input-group has-validation">
								<span class="input-group-text"><i class="fa-solid fa-key"></i></span> <input
									type="password" class="form-control" id="mb_pw_re" placeholder=""
									required>
								<div class="invalid-feedback">*비밀번호 확인 입력은 필수사항입니다.</div>
							</div>
						</div> -->


						<div class="col-12">
							<label for="mb_nick" class="form-label">닉네임</label>
							<div class="input-group has-validation">
								<span class="input-group-text"><i
									class="fa-solid fa-user-astronaut"></i></span> <input type="text"
									class="form-control" id="mb_nick" placeholder="닉네임을 입력해주세요"
									name="mb_nick" required
									style="font-family: sans-serif; font-size: 14px; font-weight: bold;">
								<div class="invalid-feedback">*닉네임 입력은 필수사항입니다.</div>
							</div>
						</div>

						<div class="col-12">
							<label for="mb_phone" class="form-label">휴대폰 번호</label>
							<div class="input-group has-validation">
								<span class="input-group-text"><i
									class="fa-solid fa-phone"></i></span> <input type="text"
									class="form-control" id="mb_phone" placeholder="010-0000-0000"
									name="mb_phone" maxlength="13"
									required>
								<div class="invalid-feedback">*휴대폰 번호 입력은 필수사항입니다.</div>
							</div>
						</div>

						<hr class="my-3" style="margin: 0px;">
						<p>
							<input class="join-submit-button" type="submit" value="회원가입">
						</p>
				</form>



			</div>
	</div>
	</main>

	<!-- 회원가입 영역 끝 -->

	<script src="resources/assets/js/vender/jquery-2.2.4.min.js"></script>
	<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
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

	<script src="resources/assets/js/main.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
		crossorigin="anonymous"></script>

	<!-- 3.24 회원 가입 관련 js 파일 경로 설정 - 홍창민 -->
	<script src="resources/assets/js/checkout.js"></script>
	<script src="../assets/dist/js/bootstrap.bundle.min.js"></script>
	<script src="https://kit.fontawesome.com/d97bdf4abd.js"
		crossorigin="anonymous"></script>


	<!-- 비동기식 id중복확인  -->


	<script type="text/javascript">
		function checkId() {
			var inputId = $('#inputId').val();
			//console.log(inputId);

			$.ajax({
				url : 'IdCheck',
				data : {
					'inputId' : inputId
				},
				type : 'get',
				success : function(data) {
					if (data == 1) {
						$('#resultCheck').text('* 사용가능한 ID 입니다.')
					} else {
						$('#resultCheck').text('* 이미 사용중인 ID 입니다.')
					}
				},
				error : function() {
					alert("Erorr")
				}
			})

		}

		/* function oninputPhone(target) {
			target.value = target.value.replace(/[^0-9]/g, '').replace(
					/(^02.{0}|^01.{1}|[0-9]{3,4})([0-9]{3,4})([0-9]{4})/g,
					"$1-$2-$3");
		} */
	</script>

</body>
</html>