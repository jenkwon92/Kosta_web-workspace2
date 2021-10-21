<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script>
	function closePopup(){
		opener.document.getElementById("id").value="";
		opener.document.getElementById("id").focus();
		self.close();
	}
</script>
<body>
<%= request.getParameter("id")%>는 중복! 사용불가 
<button onclick="closePopup()">확인</button>

</body>
</html>