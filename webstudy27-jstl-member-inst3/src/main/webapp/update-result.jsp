<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수정결과</title>
</head>
<body>
<a href="index.jsp">Home</a><br><br>
수정이 완료되었습니다 <br>
아이디 : ${sessionScope.mvo.id} <br>
패스워드 : ${sessionScope.mvo.password } <br>
이름 : ${sessionScope.mvo.name}<br>
주소 : ${sessionScope.mvo.address }<br>
생년월일 : ${sessionScope.mvo.birthday }
</body>
</html>