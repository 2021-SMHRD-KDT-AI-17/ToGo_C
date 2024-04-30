<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="zxx" class="no-js">

<head>
<!-- Mobile Specific Meta -->
<meta name="viewport"
   content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- Favicon-->
<link rel="shortcut icon" href="resources/images/favicon-16x16.png">
<!-- Author Meta -->
<meta name="author" content="CodePixar">
<!-- Meta Description -->
<meta name="description" content="">
<!-- Meta Keyword -->
<meta name="keywords" content="">
<!-- meta character set -->
<meta charset="UTF-8">
<!-- Site Title -->
<title>To Go</title>
<style>
.bgImg1 {
   background-image: url("resources/images/MainOrder.png");
   background-size:;
   background-repeat: no-repeat;
}

.bgImg2 {
   background-image: url("resources/images/MainGas.jpg")
}

.bgImg3 {
   background-image: url("resources/images/MainRest.jpg")
}

.bgImg4 {
   background-image: url("resources/images/MainFestival.jpg")
}

@font-face {
   font-family: 'BMJUA_ttf';
   src: url("resources/assets/fonts/BMJUA_ttf.ttf");
   font-weight: normal;
   font-style: normal;
}

h2, h3, h4, h5{
   font-family: BMJUA_ttf;
}

.cart_inner{
   box-shadow: 1px 1px 1px 1px rgba(0, 0, 0, .02);
}


.strong {
   font-weight: 800px;
   margin-bottom: 0;
}

.gray-btn-width{
   
   width:150px;
   text-align: center;
   margin-left: 13px;
}

.go-credit {
   width: 200px;
   height: 60px;
   border: 1px solid black;
   font-size: 18px;
   font-weight: 900;
   text-align:center;
   border-radius: 10px;
   box-shadow: 2px 3px 1px 0px black;
   margin: 15px;
   background: #FCFF94;
}

.d-block {
   height: 300px;
   width: 400px;
   display: flex;
   flex-direction: column;
}

a {
   list-style: none;
   text-decoration: none;
}

.conv-info-item-icon {
   width: 48px;
}

.wrap {
   max-width: 800px;
   min-width: 500px;
}

.menu {
   display: flex;
}

.menu_item {
   flex: 1;
}

.primary-btn {
   position: relative;
   overflow: hidden;
   color: #fff;
   padding: 0px; ! important;
   line-height: 0px; ! important;
   border-radius: 50px;
   display: inline-block;
   text-transform: uppercase;
   font-weight: 500;
   cursor: pointer;
   -webkit-transition: all 0.3s ease 0s;
   -moz-transition: all 0.3s ease 0s;
   -o-transition: all 0.3s ease 0s;
   transition: all 0.3s ease 0s;
}

.delete-btn{
       
   width:22px;
   text-align: center;
   padding-top: 2px;
   margin-left: 13px;
   border: 1px solid lightgray;
   border-radius: 5px;
}

.cart-area-nav {
   /* background: linear-gradient(62deg, #c2e59c, #64b3f4); */
   background: white;
   width: 100%;
   height: 150px;
   margin-bottom: 10px;
   position: relative;
}


.total_price-font{
   font-size: 21px;
   text-align: center;
   
}

.cart-area-nav-title {
   position: absolute;
   top: 50px;
   left: 16px;
}

.go-credit-box{
   margin-top: 20px;
   
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

</head>



<script src="https://cdn.iamport.kr/v1/iamport.js"></script>


<body style="font-family: BMJUA_ttf;">

   <!-- 헤더 영역 시작(includes 폴더) -->

   <%@include file="./includes/header.jsp"%>

   <!-- 헤더 영역 끝 -->




   <!--================Cart Area
    
    1. 결제하기 위에 핸드폰 번호 넣기
    2. 
    
     =================-->
   <section class="cart-area-nav">
      <div class="container cart-area-nav-title">
         <h2 class="cart-area-nav-title" style="font-family: 'BMJUA_ttf';">장바구니 목록</h2>
      </div>
   </section>


   <section class="cart_area" style="padding-top: 10px">
      <div class="container">
         <div class="cart_inner">
            <div class="table-responsive">
               <table class="table">
                  <thead>
                     <tr>
                        <th scope="col">상품명</th>
                        <th scope="col">단가</th>
                        <th scope="col">수량</th>
                        <th scope="col">합계</th>
                        <th scope="col"></th>
                        
                        <!--                         <th scope="col">요구사항</th> -->
                     </tr>
                  </thead>
                  <tbody>
                     <%-- <% int index=0; %> --%>
                     <c:forEach items="${b_list}" var="b" varStatus="status">

                        <tr>
                           <td>
                              <div class="media">
                                 <div class="d-flex"
                                    style="display: flex; flex-direction: column; padding: 0px;">
                                    <div>
                                       <img src="resources/images/food/${b.menu_img}" alt=""
                                          style="width: 90px; height: 70px; margin-bottom: 10px;">

                                    </div>
                                    <div>
                                       <span>${b.menu_name}</span>
                                    </div>

                                 </div>
                              </div>
                           </td>
                           <td>
                              <h5>${b.menu_price}원</h5>
                           </td>
                           <td>
                              <h5>${b.order_cnt}개</h5>

                           </td>
                           <td>
                              <h5>
                                 <span class="price">${b.total}</span>원
                              </h5>
                           </td>
                           <td>
                          <form action="basketDelete" method="post">
                  <!-- 각 상품의 ID를 hidden input으로 전달 -->
                           <input type="hidden" name="itemIndex" value="${status.index}" />
                           <button type="submit" class="delete-btn">-</button>
                       </form>
                           
                           </td>
                        </tr>
                     </c:forEach>

                     <tr class="bottom_button">
                        <td colspan="2"><a class="gray_btn strong gray-btn-width"
                           href="basketAllDelete"
                           style="padding: 5px; text-decoration: none; border-radius: 10px; background: #FFFFD4; box-shadow: 2px 3px 1px 0px black;">
                              전체 삭제</a></td>
                        
                        <td colspan="3"><a class="gray_btn strong gray-btn-width" href="goStores"
                           style="text-align:center; padding: 5px; text-decoration: none; border-radius: 10px; background: #FFFFD4; box-shadow: 2px 3px 1px 0px black;">쇼핑
                              계속하기</a></td>

                     </tr>
                     <tr>


                        <td>
                           <p style="font-family: 'BMJUA_ttf'; text-align:center; font-size: 21px; margin-bottom:0px;">총 가격</p>
                        </td>
                        <td></td>

                        <td colspan="3" class="total_price-font"><span id="total_price"></span>원</td>
                     </tr>
                     <tr>
                        <td colspan="3" class="pickup-title"
                           style="border-bottom: none; padding-top: 10px; padding-bottom: 10px;  margin-left: 3px;">
                           <p class="strong" >픽업 예정 시간</p>
                        </td>
                        <td></td>
                  <td></td>
                     </tr>
                     <tr style="border-bottom: none;">
                        <td colspan="5" style="border-bottom: none;">
                           <div class="container"
                              style="display: flex; justify-content: space-around;">

                              <div>
                                 <button class="btn btn-light strong"
                                    style="font-size: 18px; background: rgb(182, 198, 159);">&nbsp;5분
                                    후</button>
                              </div>
                              <div>
                                 <button class="btn btn-light strong"
                                    style="font-size: 18px; background: rgb(182, 198, 159);" value="10">10분 후
                                 </button>
                              </div>
                              <div>
                                 <button class="btn btn-light strong"
                                    style="font-size: 18px; background: rgb(182, 198, 159);" value="15">15분 후
                                 </button>
                              </div>

                           </div>
                        </td>
                     </tr>
                     <tr style="border-top: none;">
                        <td colspan="5" style="border-top: none;">
                           <div class="container"
                              style="display: flex; justify-content: space-around;">
                              <div>
                                 <button class="btn btn-light strong"
                                    style="font-size: 18px; background: rgb(182, 198, 159);" value="20">20분 후
                                 </button>
                              </div>
                              <div>
                                 <button class="btn btn-light strong"
                                    style="font-size: 18px; background: rgb(182, 198, 159);" value="25">25분 후
                                 </button>
                              </div>
                              <div>
                                 <button class="btn btn-light strong"
                                    style="font-size: 18px; background: rgb(182, 198, 159);" value="30">30분 후
                                 </button>
                              </div>
                           </div>
                        </td>

                     </tr>
                     
                     <tr>
                        
                     </tr>
                     <tr class="out_button_area" style="border-top: none;">
                        <td colspan="2">
                           <div>
                              <p class="strong" style="margin-bottom: 3px; margin-left: 3px;">휴대폰 번호</p>
                              <input type="text" id="phone_no" class="form-control" maxlength="13">
                           </div>
                        </td>
                        
                        <td colspan="3">
                           <div class="go-credit-box">
                              <a class="primary-btn strong go-credit"
                                 style="width: 150px; height: 50px; border: 1px solid black; font-size: 16px; font-weight: 900; border-radius: 10px; box-shadow: 2px 3px 1px 0px black; margin: 10px; background: #FCFF94;"
                                 onclick="checkPhone()"><i class="fa-regular fa-credit-card"></i>&nbsp;결제하기</a>
                           </div>
                        </td>
                     </tr>
                  </tbody>
               </table>
            </div>
         </div>
      </div>
   </section>
   <!--================End Cart Area =================-->


   <!-- footer 영역 시작(includes 폴더) -->

   <%@include file="./includes/footer.jsp"%>

   <!-- footer 영역 끝 -->



   <script type="text/javascript">
   
   let price = document.getElementsByClassName("price");
   let t = 0;
   
   for(let i = 0;i<price.length;i++){
      let priceText = price[i].innerText;
       let priceValue = parseInt(priceText);
       if (!isNaN(priceValue)) { // 숫자가 아닌 경우에는 무시
           t += priceValue;
       }
   }
   
   document.getElementById("total_price").innerText = t;
   
   
   <!-- 픽업시간 선택 스크립트 -->
   
// 픽업 시간을 저장할 전역 변수
   var pick_up_time = null;

   document.querySelectorAll('.btn.btn-light').forEach(button => {
       button.addEventListener('click', function() {
           // 클릭된 버튼의 내용(텍스트) 값을 가져와서 출력
           //console.log("Clicked button value:", this.textContent);
           // 클릭된 버튼의 내용에서 숫자만 추출하여 출력
           pick_up_time = parseInt(this.textContent.replace(/\D/g, ''));
           console.log("pick_up_time:", pick_up_time);
       });
   });

   function executeCheckPhone() {
       checkPhone(pick_up_time.toString());
   }

   function checkPhone() {
       var loginMemberValue = <%= loginMember != null ? "true" : "false" %>;
       var total_price = parseInt(document.getElementById("total_price").innerText);

       if (!loginMemberValue) {
           console.log("로그인 안되어 있음");
           var phone_noValue = document.getElementById("phone_no").value;
           if (phone_noValue === "") {
               alert("전화번호를 입력하세요");
           } else {
              var dynamicUrl = "goOrderList?phone_noValue=" + phone_noValue + "&t="+t +"&pick_up_time="+pick_up_time;
               window.location.href = dynamicUrl;
              /* requestPay(phone_noValue); */
           }   
       } else {
           console.log("로그인되어 있음");
           var dynamicUrl = "goOrderList?phone_noValue=" + ${loginMember.mb_phone} + "&t="+t+"&pick_up_time="+pick_up_time;
           window.location.href = dynamicUrl;
       }
   }
   
   IMP.init("imp14397622");

   function requestPay(phone_noValue) { // phone_noValue를 매개변수로 받도록 수정
       IMP.request_pay({
           pg: "html5_inicis",
           pay_method: "card",
           merchant_uid: "",
           name: "t",
           amount: 100,
           buyer_tel: phone_noValue, // 입력된 전화번호 사용
       }, async (rsp) => {
           if (rsp.success) {
               // 결제 성공시
               alert("결제 성공");
               // 결제 성공 후 페이지 이동
               var dynamicUrl = "goOrderList?phone_noValue=" + phone_noValue + "&t="+t +"&pick_up_time="+pick_up_time;
               window.location.href = dynamicUrl;
           } else {
               // 결제 실패시
               alert("결제 실패");
           }
       });
   }



   
   
<%--      document.querySelectorAll('.btn.btn-light').forEach(button => {
       button.addEventListener('click', function() {
           // 클릭된 버튼의 내용(텍스트) 값을 가져와서 출력
           //console.log("Clicked button value:", this.textContent);
           // 클릭된 버튼의 내용에서 숫자만 추출하여 출력
           var pick_up_time = parseInt(this.textContent.replace(/\D/g, ''));
           console.log("pick_up_time:", pick_up_time);
           
           




           혜선씨가 만든 로직 0403(주문시간 포함되지 않았을때)
                 function checkPhone() {
                 
                 var loginMemberValue = <%= loginMember != null ? "true" : "false" %>;
                 var total_price = parseInt(document.getElementById("total_price").innerText);
                 console.log("총금액"+t);

                    if (!loginMemberValue) {
                        
                        console.log("로그인 안되어 있음");
                        var phone_noValue = document.getElementById("phone_no").value;
                        if (phone_noValue === "") {
                            alert("전화번호를 입력하세요");
                        } else {
                           var dynamicUrl = "goOrderList?phone_noValue=" + phone_noValue + "&t="+t+"&pick_up_time="+pick_up_time;
                             window.location.href = dynamicUrl;
                        }   
                    } else {
                       console.log("로그인되어 있음");
                       var dynamicUrl = "goOrderList?phone_noValue=" + ${loginMember.mb_phone} + "&t="+t+"&pick_up_time="+pick_up_time;
                          window.location.href = dynamicUrl;
                    }
              } 
              
              
              IMP.init("imp14397622");

              function requestPay(phone_noValue) { // phone_noValue를 매개변수로 받도록 수정
                  IMP.request_pay({
                      pg: "html5_inicis",
                      pay_method: "card",
                      merchant_uid: "",
                      name: "t",
                      amount: 100,
                      buyer_tel: phone_noValue, // 입력된 전화번호 사용
                  }, async (rsp) => {
                      if (rsp.success) {
                          // 결제 성공시
                          alert("결제 성공");
                          // 결제 성공 후 페이지 이동
                          var dynamicUrl = "goOrderList?phone_noValue=" + phone_noValue;
                          window.location.href = dynamicUrl;
                      } else {
                          // 결제 실패시
                          alert("결제 실패");
                      }
                  });
              }     --%>       
           
                      

           
           
/*             $.ajax({
                url: "goOrderList",
                method: "get",
                data: {
                    "pick_up_time": pick_up_time
                },
                success: function () {
                   
                    console.log(pick_up_time+'pickup시간전송완료.');
                },
                error: function () {
                    console.log('pickup시간전송 실패했습니다.');
                }
            });  */
           


   
   
   
   

            
   

            
    
<%--  그나마 되는거 근데 순서가 결제하기누르고 -> 시간 선택해야함 (ㄱ ㅐ 가 ㅌ 으 ㅁ.....)
          function checkPhone() {
                var loginMemberValue = <%= loginMember != null ? "true" : "false" %>;
                var total_price = parseInt(document.getElementById("total_price").innerText);
                var phone_noValue = document.getElementById("phone_no").value;
                
                // 버튼 클릭 이벤트 핸들러 내에서 pick_up_time 값을 저장
                var pick_up_time = null;
                document.querySelectorAll('.btn.btn-light').forEach(button => {
                    button.addEventListener('click', function() {
                        pick_up_time = parseInt(this.textContent.replace(/\D/g, ''));
                        console.log("pick_up_time:", pick_up_time);
                        
                        // pick_up_time 값을 받은 후에 checkPhone() 메서드 호출
                        executeCheckPhone(phone_noValue, total_price, pick_up_time, loginMemberValue);
                    });
                });
            }

            function executeCheckPhone(phone_noValue, total_price, pick_up_time, loginMemberValue) {
                if (!loginMemberValue) {
                    console.log("로그인 안되어 있음");
                    if (phone_noValue === "") {
                        alert("전화번호를 입력하세요");
                    } else {
                        var dynamicUrl = "goOrderList?phone_noValue=" + phone_noValue + "&t=" + total_price + "&pick_up_time=" + pick_up_time;
                        window.location.href = dynamicUrl;
                    }
                } else {
                    console.log("로그인되어 있음");
                    var dynamicUrl = "goOrderList?phone_noValue=" + ${loginMember.mb_phone} + "&t=" + total_price + "&pick_up_time=" + pick_up_time;
                    window.location.href = dynamicUrl;
                }
            } --%>
 
            
            
            
            
<%--             // 동적 URL 생성 및 페이지 이동 함수

            
            
            
            function checkPhone() {

                var loginMemberValue = <%= loginMember != null ? "true" : "false" %>;
                var total_price = parseInt(document.getElementById("total_price").innerText);
                var phone_noValue = document.getElementById("phone_no").value;

                // 버튼 클릭 이벤트 핸들러 내에서 pick_up_time 값 설정
                document.querySelectorAll('.btn.btn-light').forEach(button => {
                    button.addEventListener('click', function() {
                        var pick_up_time = parseInt(this.textContent.replace(/\D/g, ''));
                        console.log("pick_up_time:", pick_up_time);
                        
                        // pick_up_time 값을 받은 후에 동적 URL 생성 및 페이지 이동
                        generateDynamicURL(phone_noValue, total_price, pick_up_time, loginMemberValue);
                    });
                });

                if (!loginMemberValue) {
                    console.log("로그인 안되어 있음");
                    if (phone_noValue === "") {
                        alert("전화번호를 입력하세요");
                    } else {
                        // 동적 URL 생성 함수 호출을 여기서 수행하지 않음
                        // 버튼 클릭 이벤트 핸들러 내에서 처리
                    }
                } else {
                    console.log("로그인되어 있음");
                    // 동적 URL 생성 함수 호출을 여기서 수행하지 않음
                    // 버튼 클릭 이벤트 핸들러 내에서 처리
                }
                
                function generateDynamicURL(phone_noValue, total_price, pick_up_time, loginMemberValue) {
                   var dynamicUrl;
                    if (!loginMemberValue) {
                        dynamicUrl = "goOrderList?phone_noValue=" + phone_noValue + "&t=" + total_price + "&pick_up_time=" + pick_up_time;
                    } else {
                        dynamicUrl = "goOrderList?phone_noValue=" + ${loginMember.mb_phone} + "&t=" + total_price + "&pick_up_time=" + pick_up_time;
                    }
                    window.location.href = dynamicUrl;
                }
                
                
            }
 --%>




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
<script src="https://kit.fontawesome.com/d97bdf4abd.js"
   crossorigin="anonymous"></script>
</body>

</html>