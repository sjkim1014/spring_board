<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>Member List!</h1>


<table>
<tr>
	<td>번호</td>
	<td>이름</td>
	<td>이메일</td>
	<td>전화번호</td>
	<td>가입일</td>
</tr>	
<c:forEach items="${member }" var="m">
	<tr>
		<td>${m.idx }</td>
		<td>${m.name }</td>
		<td>${m.email }</td>
		<td>${m.phone }</td>
		<td>
			<fmt:formatDate value="${m.join_date }" pattern="yyyy-MM-dd" />
		</td>
	</tr>	
</c:forEach>
</table>

</body>
</html>