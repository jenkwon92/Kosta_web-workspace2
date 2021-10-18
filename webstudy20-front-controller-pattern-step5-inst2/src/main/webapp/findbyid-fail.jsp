<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>findbyid-fail</title>
</head>
<body>
<script type="text/javascript">
	alert("<%=request.getParameter("id")%> 아이디에 대한 고객정보가 없습니다");
	location.href="index.jsp";
</script>
</body>
</html>