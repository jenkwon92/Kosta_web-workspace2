<%@page import="model.CarVO"%>
<%@page import="model.PersonVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"
     %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jstl set</title>
</head>
<body>
<%
		PersonVO pvo = new PersonVO("아이유",30, new CarVO("1234","k5",2000));
		request.setAttribute("personVO", pvo);
%>
EL로 PersonVO와 CarVO에 접근해서 출력 : ${requestScope.personVO.name } ${requestScope.personVO.carVO.model	 }
<c:set value="${requestScope.personVO }" var="p"></c:set>
<br><br>
${p.age } ${p.carVO.price }
<br><br>
<c:set value="${requestScope.personVO.carVO }" var="c"></c:set>
${c.model }  ${c.price }
</body>
</html>