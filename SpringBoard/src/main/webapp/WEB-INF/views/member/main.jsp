<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<script src="https://code.jquery.com/jquery-2.2.4.min.js"> </script>

<!-- 부트스트랩 3.3.2 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-2.2.4.min.js"> </script>

<script type="text/javascript">
	$(document).ready(function() {
		
		$("#join").click(function() {
			location.href = "/member/join";
		});
		$("#login").click(function() {
			location.href = "/member/login";
		});
		$("#logout").click(function () {
			location.href = "/member/logout";
		});
		$("#board").click(function () {
			location.href = "/board/list";
		});
	});
</script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<div style="text-align:center">

<c:if test="${login ne true}">


<h2>환영합니다</h2>
<h5>게시판은 로그인 후 이용가능합니다 ^_^</h5>

<hr>

<p>회원이시라면?</p>
<button id="login" class="btn btn-primary"> 로그인 </button>
<br>

<br>
<p>아직 회원이 아니시라면?</p>
<button type="button" id="join" class="btn btn-warning"> 회원가입하기 </button>

</c:if>

<c:if test="${login}">

<h2>${id } / ${nick } 님 ! 환영합니다</h2>
<h5>로그인 상태입니다^_^</h5>

<hr>

<button id="logout" class="btn btn-primary"> 로그아웃 하기  </button>
<button id="board" class="btn btn-warning"> 게시판 </button>

</c:if>

</div>

</body>
</html>