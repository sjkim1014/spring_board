<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>

<!-- 부트스트랩 3.3.2 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-2.2.4.min.js"> </script>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<div style="text-align:center">
login ? ${login }

<h1>로그인</h1>
<hr>

<form action="/member/login" method="POST" class="form">
<div class="form-group">

<input type="text" name="id" class="form-control center-block" placeholder="아이디" style="width:20%"/> <br>
<input type="password" name="pw"  class="form-control center-block" placeholder="비밀번호" style="width:20%" /> <br><br>

<button type="submit" id="login" class="btn btn-primary">로그인</button>
<a href="/member/main"> <button type="button" id="main" class="btn btn-danger">메인으로</button></a>
</div>
</form>



</div>
</body>
</html>