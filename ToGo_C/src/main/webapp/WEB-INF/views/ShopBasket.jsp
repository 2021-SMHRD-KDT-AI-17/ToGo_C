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
<title>Insert title here</title>
</head>
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

		<%= request.getParameter("requirements") %>
		
			<p>
				<a href="#">장바구니 모두 비우기</a>
			</p>
			
			
	
		<table id="#" border="1" width="400">
			<tr>
				<th>픽업 예정시간</th>
			</tr>
		
			
		</table> 
			<button name="pick_up_time"  >5분 후</button>
			<button name="pick_up_time"  >10분 후</button>
			<button name="pick_up_time" >15분 후</button>
			<br>
			<button name="pick_up_time" >20분 후</button>
			<button name="pick_up_time" >25분 후</button>
			<button name="pick_up_time">30분 후</button>
			 <br>
			<br>
			
			<button> 총 원 결제하기</button>
</body>
</html>