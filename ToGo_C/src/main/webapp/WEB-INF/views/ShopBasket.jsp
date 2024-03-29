<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<%
	String menuImg = request.getParameter("menuImg");
	String menuName = request.getParameter("menuName");
	String total = request.getParameter("total");
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
</head>
	<script src="https://cdn.iamport.kr/v1/iamport.js"></script>
<body>
		<h1>장바구니에 담은 상품</h1>
	
		<table id="basketProduct" border="1" width="400">
			<tr>
				<th>등록된 상품명</th>
			</tr>
		<c:forEach items="${b_list}" var="b" varStatus="status">
			<tr>
				<td>번호 ${status.count }</td>
				<td>사진 ${b.menu_img}</td>
				<td>이름 ${b.menu_name}</td>
				<td>가격 ${b.menu_price}원</td>
			</tr>
		</c:forEach>
		</table>
		
			<p>
				<a href="basketAllDelete">장바구니 모두 비우기</a>
			</p>
			
			
	
		<table id="#" border="1" width="400">
			<tr>
				<th>픽업 예정시간</th>
			</tr>
		
			
		</table> 
			<input type="button" value="5분 후" name="pick-time">
			<input type="button" value="10분 후" name="pick-time">
			<input type="button" value="15분 후" name="pick-time">
			<br>
			<input type="button" value="20분 후" name="pick-time">
			<input type="button" value="25분 후" name="pick-time">
			<input type="button" value="30분 후" name="pick-time">
			 <br>
			<br>
			
			
			<button ><a href="exGoStores">쇼핑 계속하기</a></button>
			<button onclick="requestPay()">총 25000원 결제하기</button>

 <script>
IMP.init("imp14397622");

function requestPay() {
  IMP.request_pay({
    pg: "html5_inicis",
    pay_method: "card",
    merchant_uid: "test_ltsj8zlm",
    name: "테스트 결제",
    amount: 100,
    buyer_tel: "010-0000-0000",
  });
}
</script>

</body>


</html>