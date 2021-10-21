<%@page import="org.kosta.webstudy27.model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>findbyid-ok</title>
</head>
<body>
<a href="index.jsp">Home</a><br><br>
<%
	
%>
<c:set value="${requestScope.memberVO }" var="m">
</c:set>
아이디 : ${m.id }  <br>
이름 : ${m.name } <br>
주소 : ${m.address }<br>
생년월일 : ${m.birthday } <br>
가입일시 : ${m.regdate } <br>

</body>
</html>