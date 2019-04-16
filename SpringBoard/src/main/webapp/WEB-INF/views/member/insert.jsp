<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>Insert Member!</h1>

<form action="/member/insert" method="post">

이름 : <input type="text" name="name" /> <br>
이메일 : <input type="text" name="email" /> <br>
전화번호 : <input type="text" name="phone" /> <br>

<button type="submit"> 회원가입 </button>

</form>

</body>
</html>
