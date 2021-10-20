<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:if test="true">
	jstl if문 실행
</c:if>
<c:if test="false">
	jstl if문 실행x
</c:if>
<br><br>
<a href="step1-2-if.jsp?userName=아이유&userAge=30">step1-2-if에서 확인</a>
</body>
</html>