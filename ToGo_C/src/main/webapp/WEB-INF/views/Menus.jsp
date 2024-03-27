<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
 
<%--  <%
 	session.setAttribute("product", <span id="total">${food_menus.getMenu_price()}</span>);
 %> --%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>음식메뉴 옵션선택</h1>
	<div class="product_list">
		<dl>

			<ul class="product_bakery">

				<li class="menuDataSet" sold="N">
					<dl>
						<dt>
						
<!-- 사진은 임의값 시작 -->
							<p id="menuImg">${food_menus.getMenu_img()}</p>
							<%-- <p>${snack_menus.getMenu_img()}</p>
							<p>${beverage_menus.getMenu_img()}</p> --%>

							<a href="javascript:void(0)" class="goFoodView"
								prod="9900000001520">
							<img src="https://image.istarbucks.co.kr/upload/store/skuimg/2024/03/[9900000001520]_20240304101320546.jpg"
								alt="블루밍 체리블라썸 세트">
							</a>
<!-- 사진 임의 값 끝 -->							
							<p id="menuName">${food_menus.getMenu_name() }</p>
							<%-- <dd>${snack_menus.getMenu_name() }</dd>
							<dd>${beverage_menus.getMenu_name() }</dd> --%>
							
							
							<p>수량선택</p>
							<p>
							<span id='result'>1</span>
							<input type='button' onclick='count("plus")' value='+' />
							<input type='button' onclick='count("minus")' value='-' />
							</p>
							
							

							<p>총 가격: <span id="total">${food_menus.getMenu_price()}</span> 원</p>
							
							<a href="goBasket"><button>장바구니 담기</button></a>

						</dt>
						
					</dl>
				</li>
		</dl>
	</div>



</body>


<script type="text/javascript">
	function count(type) {
		// 결과를 표시할 element
		const resultElement = document.getElementById('result');
		const totalElement = document.getElementById('total');

		// 현재 화면에 표시된 값
		let number = resultElement.innerText;
		let total = totalElement.innerText;
		

		// 더하기/빼기
		if (type === 'plus') {
			
			number = parseInt(number) + 1;
			total =  parseInt(total)+${food_menus.getMenu_price()}; 

			
		} else if (type === 'minus'&& number>1) {
			number = parseInt(number) - 1;
			total =  parseInt(total)-${food_menus.getMenu_price()};
		}

		// 결과 출력
		resultElement.innerText = number;
		totalElement.innerText = total;
		
	}
</script>




</html>