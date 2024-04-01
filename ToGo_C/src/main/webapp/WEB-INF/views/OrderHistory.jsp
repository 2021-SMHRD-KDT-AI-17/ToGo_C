<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
   Members loginMember = (Members) session.getAttribute("loginMember");
   %>
   
<h1>주문내역</h1>

				<c:forEach items="${}" var="" varStatus="status">
				
				
				</c:forEach>
				




</body>
</html>