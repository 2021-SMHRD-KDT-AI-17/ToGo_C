<%@page import="kr.smhrd.entity.Members"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
	 <%
	 Members loginMember =(Members)session.getAttribute("loginMember");
	
	%> 

<%-- 	<%=nick %>님 환영합니다!<br> --%>
	<!--  여기있는 member는 session에 있는 member값임 근데 application을 가져오고싶으면 application을 치면됨! -->
	<%=loginMember.getMb_nick()%>님 환영합니다!<br> 
	<a href="#"><button class="btn btn-secondary">주문내역</button></a>
	<a href ="showUpdate"><button class="btn btn-secondary">개인정보수정</button></a>
	<a href="#"><button class="btn btn-secondary">회원탈퇴</button></a>
	<a href="#"><button class="btn btn-secondary">로그아웃</button></a>
	<!-- jsp 파일명은 파일명 써야하고, servlet안써도됨 -->
	</div>
</body>
</html>