<%@page import="kr.smhrd.entity.Members"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

 <h1>회원가입</h1>
 <div>
		<form action="membersInsert" method="post">
			<p><input type="text"  placeholder="id를 입력해주세요" name="mb_id"
					id="inputId"></p>
			<p><input  type="button" value="ID 중복체크" onclick="checkId()"></p>
				<p><span id="resultCheck"></span></p>
				
			<p><input type="passward" placeholder="pw를 입력해주세요"	name="mb_pw"></p>
			<p><input type="text" placeholder="닉네임을 입력해주세요" name="mb_nick"></p>
			<p><input type="text" placeholder="핸드폰 번호를 입력해주세요" name="mb_phone"></p>
			<p><input type="submit" value="회원가입"></p>
		</form>
 
 </div>
 
 <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
 
 <script type="text/javascript">
		function checkId() {
			var inputId = $('#inputId').val();
			console.log(inputId);

			$.ajax({
				url : 'IdCheck',
				data : {'inputId' : inputId},
				type : 'get',
				success : function(data) {
					if (data == 1) {
						$('#resultCheck').text('사용가능한 ID 입니다.')
					} else {
						$('#resultCheck').text('이미 사용중인 ID 입니다.')
					}
				},
				error : function() {
					alert("Erorr")
				}
			})

		}
	</script>
	
 


</body>
</html>