<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!-- 부트스트랩 3.3.2 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-2.2.4.min.js"> </script>

<script type="text/javascript">
	$(document).ready(function() {
		if (!${login}) {
			alert("로그인 후 이용해주세요");
			location.href = "/users/login"
		}
		
		$("table").on("click", "tr", function() {
			//클릭이벤트가 발생한 <tr>의 첫번째 <td>자식의 텍스트
			var boardno = $(this).children("td").eq(0).text();
			$(location).attr("href", "/board/detail?b_no=" + boardno);
		});
	});
</script>

<style type="text/css">
th, td:not (:nth-child(2) ) {
	text-align: center;
}
td {
	border-left: 1px solid white;
	border-right: 1px solid white;
}
</style>

<style>
* {
	margin: 0;
	padding: 0;
}
h2 {
	text-align: center;
	color: #333;
	margin: 15px 0;
}
h6 {
	text-align: center;
	color: #333;
	font-size: 14px;
}
h6.title {
	text-align: left;
}
h4 {
	text-align: center;
	color: #333;
	margin: 10px 0;
}
div {
	width: 800px;
	margin: 0 auto;
	margin-top: 30px;
}
table {
	border-collapse: collapse;
	width: 100%;
	border: 1px solid #e1e1e1;
	border-top: 3px solid #333
}
table thead {
	
}
table thead tr {
	
}
/*    table thead tr th{font-size:14px; color:blue; padding:10px 0; border:1px solid #e1e1e1} */
table tbody {
	
}
table>thead>tr>th {
	text-align: center;
}
table tbody tr td {
	border: 1px solid #e1e1e1;
	text-align: center;
	font-size: 15px;
	padding: 15px 0;
}
#btnBox {
	text-align: right;
}
#btnMain {
	text-align: left;
}
</style>

<body>
	<h2>자유게시판</h2>
	<h4>악플금지! 자유롭게 정보공유와 질문 해주세요.</h4>
	<hr>
	<div>
		<table class="table table-striped">
			<colgroup>
				<col width="8%">
				<col width="*">
				<col width="10%">
				<col width="10%">
				<col width="10%">
				<col width="20%">
			</colgroup>
			<thead>
				<tr>
					<th>번호</th>
					<th>제목</th>
					<th>작성자</th>
					<th>닉네임</th>
					<th>조회수</th>
					<th>작성일</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${list }" var="list">
					<tr>
						<td>${list.board_no }</td>
						<td><a href="/board/detail?board_no=${list.board_no }">${list.title }</a></td>
						<td>${list.writer_id }</td>
						<td>${list.writer_nick }</td>
						<td>${list.hit }</td>
						<td><fmt:formatDate value="${list.write_date }" pattern="yyyy-MM-dd"/></td>
					</tr>
				</c:forEach>	
			</tbody>
		</table>

		<!-- 페이징 처리  -->
		<%-- <jsp:include page="/view/layout/paging.jsp"></jsp:include> --%>
		<!-- 검색창 영역  -->
		<%-- <jsp:include page="/view/layout/serarch.jsp"></jsp:include> --%>
		
		<div id="btnBox">
			<a href="/main"><button type="button" id="btnMain" class="btn btn-warning">메인으로 돌아가기</button></a> 
			<a href="/board/write"><button type="button" id="btnWrite" class="btn btn-primary">글쓰기</button></a>
		</div>
	</div>
</body>
<%-- <jsp:include page="/view/layout/footer.jsp"/> --%>
