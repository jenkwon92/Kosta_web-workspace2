<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보수정폼</title>
</head>
<body>
<form action="UpdateMemberController.do" method="post">
	<input type="text" name="id" value="${sessionScope.mvo.id}" readonly="readonly"><br>
	<input type="text" name="password" value="${sessionScope.mvo.password}" required="required"><br>
	<input type="text" name="name" value="${sessionScope.mvo.name}" required="required"><br>
	<input type="text" name="address" value="${sessionScope.mvo.address}" required="required"><br>
	<input type="date" name="birthday" value="${sessionScope.mvo.birthday}" required="required"><br>
	<button>수정하기</button>
</form>
</body>
</html>