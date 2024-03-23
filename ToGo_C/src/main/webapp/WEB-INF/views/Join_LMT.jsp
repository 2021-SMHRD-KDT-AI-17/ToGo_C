<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

 <h1>회원가입</h1>
 <div>
		<form action="membersInsert" method="post">
			<p><input type="text"  placeholder="id를 입력해주세요" name="mb_id"></p>
			<p><input type="passward" placeholder="pw를 입력해주세요"	name="mb_pw"></p>
			<p><input type="text" placeholder="닉네임을 입력해주세요" name="mb_nick"></p>
			<p><input type="text" placeholder="핸드폰 번호를 입력해주세요" name="mb_phone"></p>
			<p><input type="submit" value="회원가입"></p>
		</form>
 
 </div>


</body>
</html>