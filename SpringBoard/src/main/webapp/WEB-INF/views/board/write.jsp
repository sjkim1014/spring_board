<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<div class="container">

<h3>게시글 글쓰기</h3>
<hr>

<div>
<form action="/board/write" method="post">
<input type="hidden" id="fileno" name="fileno" />
<table class="table table-bordered">

<tr>
<td class="info">말머리</td>
<td colspan="2">

<div class="col-sm-4 control-div">
<select class="form-control" name="head" id="head">
	<option value="default">말머리를 선택해주세요</option>
	<option value="정보공유">정보공유</option>
	<option value="질문">질문</option>
</select>
</div>
</td>
</tr>

<tr>
<td>${nick }</td>

</tr>


<tr>
	<td class="info">제목</td>
	<td><input type="text" id="title" name="title" style="width:100%; "/></td>
</tr>
<tr><td class="info" colspan="2">본문</td></tr>
<tr><td colspan="2"><textarea id="content" class="content" name="content"></textarea></td></tr>
<tr><td><button type="button" id="btnFile" class="btn btn-warining">파일첨부</button><span id="upResult"></span></td></tr>

</table>
<br><br>
<div class="text-center">	
	<button type="button" id="btnWrite" class="btn btn-primary">작성</button>
	<a href="/board/list"><button type="button" id="btnCancel" class="btn btn-danger">취소</button></a>
</div>
</form>
</div>
</div>


</body>
</html>