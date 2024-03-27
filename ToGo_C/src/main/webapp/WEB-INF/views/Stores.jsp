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
		
	<a href="goMenus">메뉴보기</a>
      식사메뉴 입력

		<c:forEach items="${menus_list}" var="m" varStatus="status">
			<tr>
				<td>번호 ${status.count }</td>
				<td>사진 ${m.menu_img}</td>
				<td>이름 ${m.menu_name}</td>
				<td>가격 ${m.menu_price}</td>
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
      
      	음료메뉴 입력
      	
      </div>
    </div>
  </div>
</div>













<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>

</body>
</html>