<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="kr.smhrd.entity.Menus"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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

<style>

.oh-table-title{
	height: 60px;
	margin-top: 100px;
}

.oh-table-area{
	height:665px;
	width:100%;
	box-shadow: 1px 1px 1px 20px rgba(0, 0, 0, 0.1);
	border-radius: 5px;
	overflow-y : auto;
	margin-bottom: 15px;
}
table {
	border-collapse: collapse;
	width: 100%;
	border-radius: 5px;
	overflow: hidden;
	box-shadow: 0 0 23px 1px rgba(0, 0, 0, 0.1);
	margin-bottom: 20px;
}

th {
	background-color: #C0C09F;
	color: black;
	font-weight: bold;
	padding: 15px 10px;
	text-align: center !important;
	border-bottom: 2px solid #dee2e6;
}

td {
	padding: 15px 10px;
	border-bottom: 1px solid #dee2e6;
	font-weight: bold;
}

tr:nth-child(even) {
	background-color: #f8f9fa;
}

tr:nth-child(odd) {
	background-color: #f5f5f5;
}

tr:hover {
	background-color: #e9ecef;
}

.total-price {
	font-weight: bold;
	font-size: 20px;
	color: black;
	margin-top: 20px;
	margin-bottom: 10px;
	text-align: right;
}
</style>

</head>
<body>
	<!-- Start Header Area -->

	<%@include file="./includes/header.jsp"%>

	<!-- End Header Area -->
	<section class="container">
		<div class="oh-table-title">
			<h2 style="font-family: BMJUA_ttf">주문내역</h2>
		</div>
		<div class="oh-table-area">
			<table>
				<tr>
					<th>메뉴명</th>
					<th>주문수량</th>
					<th>총가격</th>
					<th>구매일자</th>
				</tr>

				<c:forEach items="${orderhistory_list}" var="oh" varStatus="status">
					<tr>
						<td>${oh.menu_name }</td>
						<td>${oh.order_cnt }</td>
						<td>${oh.order_total_amount }</td>
						<td>${oh.ordered_at }</td>
					</tr>

				</c:forEach>
			</table>
		</div>

	</section>
	
	<!-- start footer Area -->

	<%@include file="./includes/footer.jsp"%>

	<!-- End footer Area -->







</body>
</html>