<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>step2-param-3</title>
</head>
<body>
<%--EL은 별도의 형변환 없이 연산가능(자동 형변환) --%>
${param.nick } ${param.age} ${param.age+2 } 
</body>
</html>