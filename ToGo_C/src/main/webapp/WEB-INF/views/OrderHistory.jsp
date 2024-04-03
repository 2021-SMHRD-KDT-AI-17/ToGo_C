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

    <style>
       table {
            border-collapse: collapse;
            width: 100%;
            border-radius:10px;
            overflow: hidden;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1); 
            margin-bottom: 20px;
           
        }

        
        th {
            background-color: #f5f5f5; 
            color: black; 
            font-weight: bold;
            padding: 15px 10px;
            text-align: left;
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


<h2>주문내역</h2>

<table>
    <tr>
        <th>메뉴명</th>
        <th>주문수량</th>
        <th>총가격</th>
        <th>구매일자</th>
    </tr>



</head>
<body>
				<c:forEach items="${orderhistory_list}" var="oh" varStatus="status">
				<tr>
				<th>${oh.menu_name }</th>
				<th>${oh.order_cnt }</th>
				<th>${oh.order_total_amount }</th>
				<th>${oh.ordered_at }</th>
				</tr>
				
				</c:forEach>	
</table>


</body>
</html>