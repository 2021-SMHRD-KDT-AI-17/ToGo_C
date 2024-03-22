<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<fieldset align="center" style="border: dashed blue;">
		<legend text-align="center">회원가입</legend>
		
		<form action="membersInsert" method="post">
			<table align="center">
				<tr>
					<td>ID</td>
					<td><input type="text" name="mb_id"></td>
					<td rowspan="5">
                    
                 </td>
				</tr>
				<tr>
					<td>PW</td>
					<td><input type="passward" name="mb_pw"></td>
				</tr>
				<tr>
					<td>NICKNAME</td>
					<td><input type="text" name="mb_nick"></td>
				</tr>
				<tr>
					<td>TEL</td>
					<td><input type="text" name="mb_phone"></td>
				</tr>
				
				<input type="submit">
				
				
			</table>
		</form>
	</fieldset>

</body>
</html>