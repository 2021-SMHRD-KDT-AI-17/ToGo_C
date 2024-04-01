<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
       <%@ page import="java.util.List" %>
<%@ page import="kr.smhrd.entity.OrderHistory" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
   
<h1>주문내역</h1>

				<c:forEach items="${orderhistory_list}" var="oh" varStatus="status">
				<p>${oh.menu_name }</p>
				<p>${oh.order_cnt }</p>
				<p>${oh.order_total_amount }</p>
				<p>${ordered_at }</p>
				
				</c:forEach>
				

<script>
	console.log(orderhistory_list);
	console.log("나와라");
</script>


</body>
</html>