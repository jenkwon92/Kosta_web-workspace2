<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	${param.name }님 ${param.age }세
	<c:choose>
		<c:when test="${param.age >=19}">
			성인입니다
		</c:when>
		<c:when test="${param.age >=13}">
			청소년입니다
		</c:when>
		<c:otherwise>
			어린이입니다
	</c:otherwise>
	</c:choose>
</body>
</html>