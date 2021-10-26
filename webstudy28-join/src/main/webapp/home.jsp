<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사원관리 Home</title>
</head>
<body>
<h3>Model2 MVC 사원관리</h3>
현재 총 사원수 ${requestScope.empTotalCount }명 <br><br>
<%--
		사원명단을 제공할 때
		사원번호 사원명 월급 부서명 지역 정보가 리스트에 제공되도록 한다(Inner Join)
 --%>
 <a href="EmployeeListController.do">사원명단 보기</a>
</body>
</html>