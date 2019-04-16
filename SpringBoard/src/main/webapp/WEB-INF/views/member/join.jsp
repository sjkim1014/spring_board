<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>회원가입페이지</h1>
	<hr>
	<form action="/member/join" method="POST">
	
		<input type="text" name="name" placeholder="이름"/> <br>
		<input type="text" name="nick" placeholder="닉네임"/> <br>
		<input type="text" name="id" placeholder="아이디"/> <br>
		<input type="password" name="pw" placeholder="패스워드"/> <br>
		<input type="text" name="email" placeholder="이메일"/> <br>
		<input type="text" name="phone" placeholder="휴대폰번호"/> <br><br>

		<button type="submit">회원가입</button>

	</form>

</body>
</html>
