<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<script type="text/javascript">
	function checkId(){
		let mid = document.getElementById("id").value;
		if(mid==""){
			alert("아이디를 입력하세요");
		}else{		
			window.open("IdCheckController.do?id="+mid,"mypopup", "width=200, height=150, top=150, left=500");
		}
	}
	//아이디 중복확인하지 않은 상태에서 가입하기를 누르면 아이디 중복확인하세요 alert 후 전송시키지 않는다
	function checkForm(){
		if(document.getElementById("id").value != document.getElementById("flag").value){
			alert("아이디 중복확인 하세요");
			return false;
		}
	}
</script>
<form action="RegisterController.do" method="post" onsubmit="return checkForm()">
<%-- 아이디 중복확인 여부를 저장하는 hidden --%>
<input type="hidden" id="flag" value="">
	아이디 : <input type="text" name="id" id="id" placeholder="아이디" required="required"> <button type="button" onclick="checkId()"> 중복확인</button><br>
	이름 : <input type="text" name="name" placeholder="이름" required="required"><br>
	비밀번호 : <input type="text" name="password" placeholder="비밀번호" required="required"><br>
	주소 : <input type="text" name="address" placeholder="주소" required="required"><br>
	생년월일 : <input type="date" name="birthday" required="required"><br>
	<button type="submit">가입하기</button>
</form>
</body>
</html>