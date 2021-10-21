
<%@page import="javax.sql.DataSource"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
2.DBCP (Database Connection Pool) 을 이용해 컨넥션을 빌려오고 반납하는 방식의 컨넥션 객체
<%
			DataSource ds = DataSourceManager.getInstance();
%>
</body>
</html>