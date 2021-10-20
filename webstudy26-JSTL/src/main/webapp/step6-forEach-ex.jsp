<%@page import="model.PersonVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jstl forEach 연습</title>
</head>
<body>
<% 	//컨트롤러에서 공유했다고 가정
		ArrayList<PersonVO> list = new ArrayList<PersonVO>();
		list.add(new PersonVO("아이유",30));
		list.add(new PersonVO("육성재",28));
		list.add(new PersonVO("솔지",22));
		request.setAttribute("personList", list);
%>
<%-- jstl forEach 구문을 이용해 반복해 출력해본다 --%>
<c:forEach items="${requestScope.personList }" var="p" varStatus="order">
${order.count }. 이름 : ${p.name } 나이 :${p.age } <br>
</c:forEach>
</body>
</html>