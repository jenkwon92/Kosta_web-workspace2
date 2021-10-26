<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사원관리Home</title>
</head>
<body>
<%--
      forward -- HomeController.do -- FrontControllerServlet -- HandlerMapping -- HomeController -- EmployeeDAO -- Database
index.jsp                                       |
                                                |
                                            home.jsp ( 첫화면 )
 --%>
 <jsp:forward page="HomeController.do"/>
</body>
</html>