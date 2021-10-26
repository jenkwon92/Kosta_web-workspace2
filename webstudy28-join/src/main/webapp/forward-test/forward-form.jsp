<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp forward action tag</title>
</head>
<body>
<%--
		19세 이상이면 forward-result.jsp에서 화면을 제공하고
		19세 미만이면 jsp forward action tag를 이용해
		foward-result-child.jsp에서 응답하도록 처리한다
 --%>
<form action="forward-result.jsp">
	<input type="number" name="age" placeholder="나이" required="required">
	<button>전송</button>
</form>
</body>
</html>