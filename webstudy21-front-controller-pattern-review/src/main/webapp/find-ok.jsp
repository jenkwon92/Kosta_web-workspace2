<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>find-ok</title>
</head>
<body>
<a href="index.jsp">Home</a><br><br>
검색된 상품정보 : <%=request.getAttribute("productInfo") %>
</body>
</html>