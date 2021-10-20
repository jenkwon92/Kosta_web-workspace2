<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
1. 기존 방식으로 파라미터를 전달받는다  <%=request.getParameter("command") %><%=request.getParameter("name") %><%=request.getParameter("age") %>
<br><br>
<%-- 기존 스크립틀릿 방식은 정보가 없을 경우 null이 출력되지만 EL은 정보가 없을 경우 출력하지 않는다 --%>
2. EL 방식으로 파라미터를 전달받는다 ${param.command } ${param.name } ${param.age }
<br><br><br>
<form action="">
<input type="text" name="nick" placeholder="별명" required="required"><br>
<input type="number" name="age" placeholder="나이" required="required"><br>
<button>전송`</button>
</form>
<%-- step2-param-3.jsp 에서 EL 방식으로 파라미터를 받아서 출력해본다 --%>
</body>
</html>