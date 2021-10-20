<%@page import="model.PersonVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setAttribute("pvo", new PersonVO("아이유", 30));
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>step2-choose-when-otherwise</title>
</head>
<body>
<%--
			if(){
			else if(){
			else{
			}
 --%>
jstl 다중 조건<br><br>
<c:choose>
	<c:when test="${requestScope.pvo.name =='아이유' }">
		아이유 ${requestScope.pvo.age } 세
	</c:when>
	
	<c:when test="${requsetScope.pvo.name=='손흥민' }">
		손흥민 ${pvo.age }
	</c:when>
	<c:otherwise>
		해당사항없음(else 구문)
	</c:otherwise>
</c:choose>

</body>
</html>








