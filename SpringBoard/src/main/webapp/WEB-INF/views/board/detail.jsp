<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<!-- 부트스트랩 3.3.2 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-2.2.4.min.js"> </script>

<body>
	<style>
td.noreply {
	padding: 0 !important;
}
</style>
	<div class="container">

		<h3>게시글 상세보기</h3>
		<hr>

		<div>
			<table class="table table-bordered">
				<tr>

					<td class="info">글번호</td>
					<td>${detail.board_no }</td>
					<td class="info">작성일</td>
					<td colspan="2">${detail.write_date }</td>
				</tr>

				<tr>
					<td class="info">작성자 아이디</td>
					<td>${detail.writer_id }</td>
					<td class="info">닉네임</td>
					<td colspan="2">${detail.writer_nick }</td>
				</tr>

				<tr>
					<td class="info">조회수</td>
					<td>${detail.hit }</td>
				<tr>
					<td class="info">제목</td>
					<td colspan="4">${detail.title }</td>
				</tr>
				<tr>
					<td class="info">본문</td>
					<td colspan="4">${detail.content }</td>
				</tr>
			</table>
		</div>

		<div class="text-center">
			<!-- 모두노출 -->
			<a href="/board/list"><button id="btnList"
					class="btn btn-primary">목록</button></a>

			<!-- 본인 작성글 에만 노출 -->
			<a href="/board/update?board_no=${detail.board_no }"><button
					id="btnUpdate" class="btn btn-info">수정</button></a>
			<button id="btnDelete" class="btn btn-danger">삭제</button>

		</div>
</body>
</html>