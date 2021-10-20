<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
기존 스크립틀릿 방식으로 표현 : 
	<%
	String ma[] = request.getParameterValues("menu");
	for (int i = 0; i < ma.length; i++) {
	%>
	<%=ma[i]%>
	<%
	}
	%>
	주문완료
	<br>
	<br> EL로 표현:
	<%-- ${paramValues.menu} --%>
	<c:forEach items="${paramValues.menu}" var="m">
	 ${m}
	 </c:forEach>
	 주문완료<br><br>
	 총 주문수 : ${fn:length(paramValues.menu) }
</body>
</html>