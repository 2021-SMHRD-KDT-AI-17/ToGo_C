<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
   <%@ page import="java.util.List" %>
<%@ page import="kr.smhrd.entity.Menus" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
   
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

@font-face {
	font-family: 'BMJUA_ttf';
	src: url("resources/assets/fonts/BMJUA_ttf.ttf");
/* 	font-weight: normal;
	font-style: normal; */
}


ul {
   list-style: none;
   text-align: center;
}

a {
   text-decoration: none;
   color: #333;
}

h1{

	font-weight: bold;
}

h2{
	font-family: 'BMJUA_ttf';
	position: relative;
	left: 20px;
	padding-top: 10px;
}


.wrap {
   letter-spacing: -0.5px;
   
}

.cart-area-nav{
   background: linear-gradient(62deg, #c2e59c, #64b3f4);
   width: 100%; 
   height: 200px;
   margin-top:0px;
   position:relative;
    
}

.tab_menu {
   position: relative;
   top:20px;
   text-align: center;
}

.tab_menu .list {
   overflow: hidden;
}

.tab_menu .list li {
   float: left;
   margin-right: 16px;
}

.tab_menu .list .btn {
   font-size: 20px;
}

.tab_menu .list .cont {
   display: none;
   position: absolute;
   left: 0;
   background: white;
   color: black;
   text-align: center;
   width: 100%;
   height: 430px;
   border-radius: 0px 5px 5px 5px;
}

.tab_menu .list li.is_on .btn {
   text-align:center;
   font-weight: bold;
   width:82px;
   color: black;
   background: rgb(182, 198, 159);
}

.tab_menu .list li.is_on .cont {
   display: block;
}

.is_on a{
	border-radius: 5px 5px 0px 0px;
}


#total{
   padding: 20px 0px 10px 0px;
}



.flexx {
   align-items: center;
   padding: 10px;
   border-bottom: 1px solid #999;
}

.cart-area-nav-title{
   position: relative;
   top: 55px;
}

.menu-info-box{
   padding-right: 20px;
   width:150px;
}

.menu-select-area{
   margin-top: 30px;
   width: 95%; 
   background: wheat; 
   height: 520px; 
   border-radius: 10px;
   
}

.menu-img-box{
   width: 100%;
   height: 100%;
}

.popup {
   display: none;
   position: fixed;
   top: 50%;
   left: 50%;
   transform: translate(-50%, -50%);
   width: 700px;
   height: 700px;
   border: 1px solid #ccc;
   background-color: #fff;
   padding: 20px;
   z-index: 1000;
   opacity: 0;
   /* 처음에는 투명하게 설정 */
   transition: opacity 0.1s ease-in-out;
   /* 애니메이션 효과 설정 */
}

.popup-content {
   text-align: center;
}

.close {
   position: absolute;
   top: 5px;
   right: 5px;
   width: 40px;
   height: 40px;
   cursor: pointer;
   display: flex;
   justify-content: center;
   align-items: center;
   font-size: 30px;
   color: #000;
   background: none;
   border: none;
}

.close:hover {
   color: #999;
}

.popup-click {
   cursor: pointer;
   padding: 10px 20px;
   background-color: #999;
   color: #fff;
}

.overlay {
   position: fixed;
   top: 0;
   left: 0;
   width: 100%;
   height: 100%;
   background-color: rgba(0, 0, 0, 0.5);
   z-index: 999;
   display: none;
}

.request-text-box {
   resize: none;
   border: 1px solid black;
   
}

.request-text{
   font-size: 17px;
   font-weight: 800;
   padding: 15px 10px 10px 10px;
   margin-top: 10px;
}

.request {
   height: 100px;
   background: rgb(182, 198, 159);
   margin-bottom: 25px;
   margin-left: 25px;
   margin-right: 25px;
   align-items: center;
   border-radius: 5px;
}

.modal-header{
   background: rgb(182, 198, 159);
}

.menu-modal-box-wrap {
   padding: 5px 5px 0px 5px;
   box-sizing: border-box;
}

.menu-img {
   height: 200px;
   width: 100%;   
   border: 1px solid #999999;
}


.menu-detail {
   height: 200px;
   width: 330px;
}

.about-menu{
font-size: 14px;
	padding: 10px 0px 5px 10px;
	
}

#menuName{
   font-size: 18px;
   padding: 10px 0px 5px 10px;
   margin: 0;
}

#menuName p{
   border-bottom: 1px solid #999999;
}

.menu-price{
   padding: 2px 0px 0px 20px;
}

#menuPrice{
   text-align: right;
   padding-left: 20px;
}

.menu-count{   
   width: 80%; 
   display: flex;
   padding: 0px 0px 10px 20px;
}

.menu-count-left{
   margin-right: 17px;
}

.menu-total{
      padding: 10px 0px 10px 20px;
      text-align: right;
      font-size: 20px;
}




#result{
   padding: 0px 10px 0px 10px;
}

.plus-button, .minus-button{
   height: 30px;
   width: 30px;
   border-radius: 5px;
}

.go-cart{
   display: flex;
   justify-content: center;
}

.go-basket-b{
   width: 200px;
   height: 60px;
   border: 1px solid black;
   font-size: 18px;
   font-weight:900;
   border-radius: 10px;
   box-shadow: 2px 3px 1px 0px black;
   margin: 15px;
   
   background: #FCFF94;
}

.close-basket{
   width: 90px;
   height: 40px;
   border: 1px solid black;
   font-size: 18px;
   font-weight:900;
   border-radius: 10px;
   box-shadow: 2px 3px 1px 0px black;
   margin: 15px;
}

.add-basket{
   width: 200px;
   height: 40px;
   border: 1px solid black;
   font-size: 18px;
   font-weight:900;
   border-radius: 10px;
   box-shadow: 2px 3px 1px 0px black;
   margin: 15px;
   background: #BEBCFF;
}

.modal-footer{
   background: #E8E8CA;
   display: flex;
   justify-content: space-between;
}

.modal-title, #menuName, .menu-price, .menu-count-left, .menu-total{
	
	font-weight: bold;
	
}
</style>


</style>

</head>

<body style="font-family: BMJUA_ttf;">


   <!-- Start Header Area -->

   <%@include file="./includes/header.jsp"%>

   <!-- End Header Area -->

   <!-- Start Banner Area -->
   <!-- <section class="banner-area organic-breadcrumb">
      <div class="container">
         <div
            class="breadcrumb-banner d-flex flex-wrap align-items-center justify-content-end">
            <div class="col-first">
               <h1>주문하기</h1>
               <nav class="d-flex align-items-center">
                  <a href="index.html">홈<span class="lnr lnr-arrow-right"></span></a>
                  <a href="category.html">주문하기</a>
               </nav>
            </div>
         </div>
      </div>
      
      
   </section> -->
   
       <section class="cart-area-nav">
       <div class="container cart-area-nav-title">
          <h2 class="cart-area-nav-title">주문하기</h2>
       </div>
    </section> 
   <!-- End Banner Area -->

   <section class="menu-select-area container"
      >

      <div class="wrap">
         <div class="tab_menu">
            <ul class="list" style="padding-right:10px; margin-bottom: 0px;">
               <li class="is_on"><a href="#tab1" class="btn">식사</a>
                  <div id="tab1" class="cont" style="overflow-y: scroll;">
                     <c:forEach items="${food_menus_list}" var="fm" varStatus="status">
                        <div class="flexx" data-bs-toggle="modal" data-bs-target="#exampleModal"  
                           style="display: flex; justify-content: space-around; cursor: pointer;" onclick="select_food(${status.count})">
                           <div class="menu-info-box">
                                 <p> ${fm.menu_name}</p>
                                 <p> ${fm.menu_price}원</p>
<!-- 좋아요는 결제완료 페이지에서 구현예정 현재는 임시임 -->
                                 <div class="good-bad">
                                 <span><i class="fa-regular fa-thumbs-up"></i></span><span>&nbsp;89개</span>
                                 </div>
                           </div>                                 
                           <div class="menu-img-box">
                              <img src="resources/images/logo.png" 사진 ${fm.menu_img} alt="">
                           </div>                              
                        </div>         
                     </c:forEach>
                  </div>
               </li>
               
               <!--  ---------------------------------------------------------------------------------------------------------------          ----->
               <li class="is_on"><a href="#tab2" class="btn" id="snack_select">간식</a>
                  <div id="tab2" class="cont" style="overflow-y: scroll;">
      
                     <c:forEach items="${snack_menus_list}" var="sm" varStatus="status">
                        <div class="flexx" data-bs-toggle="modal" data-bs-target="#exampleModal" 
                           style="display: flex; justify-content: space-around; cursor: pointer;" onclick="select_snack(${status.count})">
                           <div class="menu-info-box">
                                 <p> ${sm.menu_name}</p>
                                 <p> ${sm.menu_price}원</p>
<!-- 좋아요는 결제완료 페이지에서 구현예정 현재는 임시임 -->
                                 <div class="good-bad">
                                 <span><i class="fa-regular fa-thumbs-up"></i></span><span>&nbsp;89개</span>
                                 </div>
                           </div>                                 
                           <div class="menu-img-box">
                              <img src="pl1.jpg" 사진 ${sm.menu_img} alt="" >
                           </div>                              
                        </div>         
                     </c:forEach>
                  </div>
               </li>
               
               
               <li class="is_on"><a href="#tab3" class="btn" id="beverage_select">음료</a>
                  <div id="tab3" class="cont" style="overflow-y: scroll; margin-right: 0px;">
      
                     <c:forEach items="${beverage_menus_list}" var="bm" varStatus="status">
                        <div class="flexx" data-bs-toggle="modal" data-bs-target="#exampleModal" 
                           style="display: flex; justify-content: space-around; cursor: pointer;" 
                           onclick="select_beverage(${status.count})">
                           <div class="menu-info-box" >
                                 <p> ${bm.menu_name}</p>
                                 <p> ${bm.menu_price}원</p>
<!-- 좋아요는 결제완료 페이지에서 구현예정 현재는 임시임 -->
                                 <div class="good-bad">
                                 <span><i class="fa-regular fa-thumbs-up"></i></span><span>&nbsp;89개</span>
                                 </div>
                                 
                           </div>                                 
                           <div class="menu-img-box">
                              <img src="pl1.jpg" 사진 ${bm.menu_img} alt="">
                           </div>                              
                        </div>         
                     </c:forEach>
                  </div>
               </li>
         

      </ul>
      </div>
      </div>
   </section>
   
   <section class="container go-cart">
      <div class="go-cart-button">
         
         <button onclick = "location.href ='goBasket'" class="go-basket-b">
         <span><i class="fa-solid fa-cart-shopping"></i>&nbsp;&nbsp;</span>장바구니로 이동</button>
      </div>
   </section>




   <!-- 팝업창을 제외한 나머지 body 영역 어두어지는 효과 -->
   <div class="overlay"></div>





   <!-- Button trigger modal -->
<!--    <button type="button" class="btn btn-primary" data-bs-toggle="modal"
      data-bs-target="#exampleModal">Launch demo modal</button> -->

   <!-- Modal -->
   
   
       <div class="modal fade" id="exampleModal" tabindex="-1"
      aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div
         class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
         <div class="modal-content">
            <div class="modal-header">
               <h1 class="modal-title fs-5" id="exampleModalLabel">주문 상세</h1>
               <button type="button" class="btn-close" data-bs-dismiss="modal"
                  aria-label="Close"></button>
            </div>
            <div class="menu-modal-box modal-body">
               <div class="menu-modal-box-wrap">

                  <div class="menu-img">
                  <p id="menuImg" name="menuImg_option"></p>
                  
                  </div>
                  <div class="menu-detail">
                     <article>
                    
                     <p id="menuName" name="menuId_option"> </p>
                     <p class="about-menu" style="margin-bottom: 5px;">여기에 설명 넣으시면 됩니다.</p>
                     <p class="menu-price">단가:<span id = "menuPrice" name="menuPrice_option"></span> 원</p>
                        <p></p>
                     </article>

                     <section class="menu-count">
                        <div class="menu-count-left">
                           <span> 수량 </span>
                        </div>
                        <div class="menu-count-right">
                           
                           
                           <input type='button' class="minus-button" onclick='count("minus")' value='-' />
                           <span id='result' name="result_option">1</span>
                           <input type='button' class="plus-button" onclick='count("plus")' value='+' />
                        </div>
                     </section>

                     <section>
                        <p class="menu-total">총 가격 :&nbsp;<span id="total" name="total_option"></span>
                         <span class="won">원</span></p>
                     </section>
                  </div>



               </div>


            </div>
            <div class="request">
               <div class="request-text-box" style="height: 30px;">
               	<input type="text" id = "idx" style="display: none;">
                  <span class="request-text">요청사항</span></div>
               <div style="height: 80px; width: 100%;">
                  <textarea style="width: 100%; height: 100%;"
                     class="request-text-box" id="requirements" name="requirements_option"></textarea>
               </div>
            </div>

            <div class="modal-footer">
               <button type="button" class="close-basket"
                  data-bs-dismiss="modal">닫기</button>

               <button type="submit" class="add-basket" onclick = "Add()" data-bs-dismiss="modal">
               <i class="fa-solid fa-plus"></i>&nbsp;상품 담기</button>
            </div>
         </div>
      </div>




      <script
         src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
         integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
         crossorigin="anonymous"></script>
         
         <%
    // 섹션에서 객체 리스트 가져오기
    List<Menus> food_menus_list = (List<Menus>) session.getAttribute("food_menus_list");
    List<Menus> snack_menus_list = (List<Menus>) session.getAttribute("snack_menus_list");
   List<Menus> beverage_menus_list = (List<Menus>) session.getAttribute("beverage_menus_list"); 

%>
</body>

</html>

<!-- start footer Area -->

<%@include file="./includes/footer.jsp"%>

<!-- End footer Area -->

<script>
   const tabList = document.querySelectorAll('.tab_menu .list li');
   for (var i = 0; i < tabList.length; i++) {
      tabList[i].querySelector('.btn').addEventListener('click', function(e) {
         e.preventDefault();
         for (var j = 0; j < tabList.length; j++) {
            tabList[j].classList.remove('is_on');
         }
         this.parentNode.classList.add('is_on');
      });
   }
 
    /* document.getElementById("trigger").addEventListener("click", function() {
      var popup = document.getElementById("popup");
      var overlay = document.querySelector(".overlay");
      var body = document.body; 

      popup.style.display = "block";
      overlay.style.display = "block";
      body.classList.add("blur");
      body.style.overflow = "hidden";

      // 서서히 나타나는 애니메이션 적용
      setTimeout(function() {
         popup.style.opacity = "1";
      }, 50); // 약간의 지연 추가
   }); */

   function closePopup() {
      var popup = document.getElementById("popup");
      var overlay = document.querySelector(".overlay");
      var body = document.body;

      // 서서히 사라지는 애니메이션 적용
      popup.style.opacity = "0";

      // 애니메이션 시간만큼의 지연 추가
      setTimeout(function() {
         popup.style.display = "none";
         overlay.style.display = "none";
         body.classList.remove("blur");
         body.style.overflow = "";
      }, 300);
      
      
   }
   //------------------------ 오늘 구현
   
    function select_food(num){
      const resultElement = document.getElementById('result');
      resultElement.innerText = 1;
      
		const requirementsElement = document.getElementById('requirements');
		 requirementsElement.value = "";
		 
       num  = parseInt(num);
      
      var food_menus_list = <%= new com.google.gson.Gson().toJson(food_menus_list) %>;
       
       let idx = document.getElementById("idx");
       let menuName = document.getElementById("menuName");
       let menuImg = document.getElementById("menuImg");
       let menuPrice = document.getElementById("menuPrice");
       let total = document.getElementById("total");

       idx.innerText = food_menus_list[num-1].menu_idx;
       menuName.innerText = food_menus_list[num-1].menu_name;
       menuImg.innerText = food_menus_list[num-1].menu_img;
       menuPrice.innerText = food_menus_list[num-1].menu_price;
       total.innerText = food_menus_list[num-1].menu_price;
       
       
       
    }
   
    
    
    function select_snack(num){
      const resultElement = document.getElementById('result');
      resultElement.innerText = 1;
      
		const requirementsElement = document.getElementById('requirements');
		 requirementsElement.value = "";
       num  = parseInt(num);
       
       var snack_menus_list = <%= new com.google.gson.Gson().toJson(snack_menus_list) %>;
       
       let idx = document.getElementById("idx");
       let menuName = document.getElementById("menuName");
       let menuImg = document.getElementById("menuImg");
       let menuPrice = document.getElementById("menuPrice");
       let total = document.getElementById("total");

       idx.innerText = snack_menus_list[num-1].menu_idx;
       menuName.innerText = snack_menus_list[num-1].menu_name;
       menuImg.innerText = snack_menus_list[num-1].menu_img;
       menuPrice.innerText = snack_menus_list[num-1].menu_price;
       total.innerText = snack_menus_list[num-1].menu_price;
       

    }
    
    
    function select_beverage(num){
       
      const resultElement = document.getElementById('result');
      resultElement.innerText = 1;
      
		const requirementsElement = document.getElementById('requirements');
		 requirementsElement.value = "";
       num  = parseInt(num);
       var beverage_menus_list = <%= new com.google.gson.Gson().toJson(beverage_menus_list) %>;
       
       let idx = document.getElementById("idx");
       let menuName = document.getElementById("menuName");
       let menuImg = document.getElementById("menuImg");
       let menuPrice = document.getElementById("menuPrice");
       let total = document.getElementById("total");

       idx.innerText = beverage_menus_list[num-1].menu_idx;
       menuName.innerText = beverage_menus_list[num-1].menu_name;
       menuImg.innerText = beverage_menus_list[num-1].menu_img;
       menuPrice.innerText = beverage_menus_list[num-1].menu_price;
       total.innerText = beverage_menus_list[num-1].menu_price;
       

    }
   
    
    function Add() {
        

        const store_id = '${select_area.getService_name()}';
        const menu_name = document.getElementById('menuName').innerText;
        const menu_idx = document.getElementById('idx').innerText;
        const menu_price = document.getElementById('menuPrice').innerText;
        const menu_Img = document.getElementById("menuImg");
        const total = document.getElementById('total').innerText;

        const order_cnt = document.getElementById('result').innerText;
        const order_request = document.getElementById('requirements').innerText;

        let list = {
            "store_id": store_id,
            "menu_idx" : menu_idx,
            "menu_name": menu_name,
            "menu_price": menu_price,
            "menu_Img": menu_Img,
            "order_cnt": order_cnt,
            "order_request": order_request,
            "total": total
        };
        

        $.ajax({
            url: "goShopBasketAdd",
            method: "POST", // 데이터를 서버로 보낼 때는 POST 방식을 사용합니다.
            data: JSON.stringify(list), // 객체를 JSON 문자열로 변환하여 전송합니다.
            contentType: "application/json", // 전송하는 데이터의 타입을 명시합니다.
            success: function (r) {
                console.log(r);
                // 성공적으로 장바구니에 담기면 팝업을 닫습니다.
                closePopup();
                
            },
            error: function () {
                console.log("실패");
            }
        });
        
        // 팝업이 바로 닫히도록 처리합니다.
        closePopup();
    }

</script>



<script type="text/javascript">
   function count(type) {
      // 결과를 표시할 element
      const resultElement = document.getElementById('result');
      const totalElement = document.getElementById('total');
       let menuPriceElement = document.getElementById("menuPrice");


      // 현재 화면에 표시된 값
      let number = resultElement.innerText;
      let total = totalElement.innerText;
       let menuPrice = menuPriceElement.innerText; 

      //total = parseInt(menuPrice.innerText);

      // 더하기/빼기
      if (type === 'plus') {
         
         number = parseInt(number) + 1;
         total = parseInt(total)+parseInt(menuPrice);
         //total =  parseInt(total)+${food_menus.getMenu_price()}; 
         
         
      } else if (type === 'minus'&& number>1) {
         number = parseInt(number) - 1;
         total =  parseInt(total)-parseInt(menuPrice);
      }

      // 결과 출력
      resultElement.innerText = number;
      totalElement.innerText = total;
      
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

<script src="https://kit.fontawesome.com/d97bdf4abd.js"
   crossorigin="anonymous"></script>
</body>

</html>