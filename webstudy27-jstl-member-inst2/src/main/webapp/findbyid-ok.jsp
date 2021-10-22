<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>findbyid-ok</title>
</head>
<body>
<a href="index.jsp">Home</a><br><br>
검색결과 <br><br>
아이디 : ${vo.id}  <br>
이름 : ${vo.name}<br>
주소 : ${vo.address } <br>
생일 : ${vo.birthday }<br>
가입일시 : ${vo.regdate }<br>
</body>
</html>