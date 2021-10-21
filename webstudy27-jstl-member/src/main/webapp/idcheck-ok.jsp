<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript">
	function closePopup(){
		//자신을 띄운 웹페이지 요소에 접근
		//자바스크립트의 opener객체: 자신을 띄운 웹페이지를 제어하기 위한 객체
		//본 정의 nick입력 text 요소에 접근해서 value를 삭제해본다
		//본 창의 hidden flag 에 접근해서 닉네임을 할당해본다 
		opener.document.getElemetById("")
		opener.document.getElementById("flag").value="<%=request.getParameter("id")%>";
		opener.document.getElementById("pass").focus();
		//자신의 창을 종료
		self.close();
	}
</script>
<body>
${param.id }는 가능한 아이디 입니다.
<input type="button" value="확인" onclick="closePopup()">
</body>
</html>