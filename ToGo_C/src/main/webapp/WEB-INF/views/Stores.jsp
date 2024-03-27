<%@page import="java.util.List"%>
<%@page import="kr.smhrd.entity.Menus"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
    <!-- jstl 라이브러리 사용법 -->
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">

.stores_Kategorie{margin: 20px; padding: 30px; border: 1px solid; border-radius: 3px; background-color: yellow;}

</style>

</head>



<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<body>

<%-- 	<%
		List<Menus> menus_list = (List<Menus>)request.getAttribute("menus_list");
		
				List<Menus> food_menus_list = (List<Menus>)request.getAttribute("food_menus_list");
	%> --%>



 <h1>푸드코트</h1>



<div class="accordion accordion-flush" id="accordionFlushExample">

  <div class="accordion-item">
    <h2 class="accordion-header">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseOne" aria-expanded="false" aria-controls="flush-collapseOne">
        식사
      </button>
    </h2>
    <div id="flush-collapseOne" class="accordion-collapse collapse" data-bs-parent="#accordionFlushExample">
      <div class="accordion-body">
		
      식사메뉴 입력

 		<c:forEach items="${food_menus_list}" var="fm" varStatus="status">
			<tr>
				<a href="goMenus?count=${fm.menu_idx}">번호 ${status.count }</a>
				<td>사진 ${fm.menu_img}</td>
				<td>이름 ${fm.menu_name}</td>
				<td>가격 ${fm.menu_price}원</td>
			</tr>
		</c:forEach> 

      
      </div>
    </div>
  </div>
  
  
  
  <div class="accordion-item">
    <h2 class="accordion-header">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseTwo" aria-expanded="false" aria-controls="flush-collapseTwo">
        간식
      </button>
    </h2>
    <div id="flush-collapseTwo" class="accordion-collapse collapse" data-bs-parent="#accordionFlushExample">
      <div class="accordion-body">
      
      	<c:forEach items="${snack_menus_list}" var="sm" varStatus="status">
			<tr>
				<a href="goMenus?count=${sm.menu_idx}">번호 ${status.count }</a>
				<td>사진 ${sm.menu_img}</td>
				<td>이름 ${sm.menu_name}</td>
				<td>가격 ${sm.menu_price}원</td>
			</tr>
		</c:forEach>
      
      간식메뉴 입력
      
      </div>
    </div>
  </div>
  
  
  <div class="accordion-item">
    <h2 class="accordion-header">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseThree" aria-expanded="false" aria-controls="flush-collapseThree">
        음료
      </button>
    </h2>
    <div id="flush-collapseThree" class="accordion-collapse collapse" data-bs-parent="#accordionFlushExample">
      <div class="accordion-body">
      
      
      	<c:forEach items="${beverage_menus_list}" var="bm" varStatus="status">
			<tr>
				<a href="goMenus?count=${bm.menu_idx}">번호 ${status.count }</a>
				<td>사진 ${bm.menu_img}</td>
				<td>이름 ${bm.menu_name}</td>
				<td>가격 ${bm.menu_price}원</td>
			</tr>
		</c:forEach>
      
      	음료메뉴 입력
      	
      </div>
    </div>
  </div>
</div>













<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>

</body>
</html>