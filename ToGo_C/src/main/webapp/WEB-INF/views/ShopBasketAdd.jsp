<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>장바구니에 담겼습니다.</h1>

      	<c:forEach items="${basket_list}" var="b" varStatus="status">
			<tr>
				<td>번호 ${status.count }</td>
				<td>사진 ${b.menu_img}</td>
				<td>이름 ${b.menu_name}</td>
				<td>가격 ${b.menu_price}원</td>
			</tr>
		</c:forEach>



	
</body>
</html>