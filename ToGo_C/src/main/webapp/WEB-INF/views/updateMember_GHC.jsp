<%@ page language="java" contentType="text/html; charset=UTF-8" isELIgnored="false"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
						<!-- Wrapper -->
			<div>
				
							<li><h5>회원정보수정</h5></li>
								<form action="memberUpdate" method="post">
									<li>접속한 id : ${loginMember.mb_id}</li>
									<li><input type="hidden" name="mb_id" value="${loginMember.mb_id}"></li>
									<li><input type="password" name="mb_pw" placeholder="PW를 입력하세요" ></li>
									<li><input type="text" name="mb_nick" placeholder="NicnName을 입력하세요" ></li>
									<li><input type="text" name="mb_phone" value="${loginMember.mb_phone}" placeholder="전화번호를 입력하세요" ></li>
									
									<li><input type="submit" value="UPDATE" class="button fit" ></li>
								</form>
							
			</div>
			
</body>
</html>