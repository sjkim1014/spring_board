<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<script src="https://code.jquery.com/jquery-2.2.4.min.js"> </script>

<!-- 부트스트랩 3.3.2 -->
<link rel="stylesheet" href="/css/bootstrap.min.css">
<link rel="stylesheet" href="/css/users.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>


<script type="text/javascript">
	$(document).ready(function() {
		
		$("#join").click(function() {
			location.href = "/member/join";
		});
		$("#login").click(function() {
			$("form").submit();		
		});
		$("#logout").click(function () {
			<% session.invalidate(); %>
			location.href = "/member/loginMain";
		});
		$("mypage").click(function () {
			location.href = "/login/mypage";
		});
	});
</script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

login ? ${login }

<c:if test="${login ne true}">
<h1>로그인</h1>
<hr>

<form action="/member/loginMain" method="POST" class="form">

<input type="text" name="id" placeholder="아이디"/> <br>
<input type="password" name="pw" placeholder="비밀번호"/> <br><br>

<button id="login"> 로그인 </button>

</form>

<br>
아직 회원이 아니시라면?
<br>
<button id="join"> 회원가입하기 </button>

</c:if>

<c:if test="${login}">

<h1>로그인 상태입니다</h1>
<hr>
<button id="logout"> 로그아웃 하기  </button>
<button id="mypage"> 마이페이지 </button>

</c:if>


</body>
</html>