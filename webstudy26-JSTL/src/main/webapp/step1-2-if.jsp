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
	사용자 이름: ${param.userName }
	<br> 사용자 나이 : ${param.userAge } 세
	<br>
	<%-- jstl if문으로 나이가 20세 이상이면 성인 문자열을 출력 --%>
	<c:if test="${param.userAge>=20}">
	성인
</c:if>
	<%-- jstl if 문에서 여러 조건을 비교 : 나이가 20 세 이상이고 이름이 아이유이면 --%>
	<br>
	<c:if test="${param.userAge>=20 && param.userName=='아이유'}">
	성인 아이유
</c:if>
</body>
</html>