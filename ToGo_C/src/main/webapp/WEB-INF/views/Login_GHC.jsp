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
		<form action="membersSelect" method="post">
			
			<p><input type="text" class="form-control" name="mb_id" placeholder="아이디를 입력하세요."></p>
			<p><input type="password"  class="form-control" name="mb_pw" placeholder="비밀번호를 입력하세요."></p>
			<p><input type="submit" class="btn btn-secondary"  value="로그인"></p>
		</form>
	</div>
</body>
</html>