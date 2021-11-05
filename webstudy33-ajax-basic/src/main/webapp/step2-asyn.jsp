<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비동기방식 테스트</title>
</head>
<body>
<script type="text/javascript">
	let xhr;
	function startAjax(){
		xhr=new XMLHttpRequest(); //Ajax 통신을 위한 자바스크립트 객체
		//alert(xhr);
		//callback함수를 등록: ajax 요청에 대해 서버가 응답하면 실행될 함수
		//onreadystatechange -> readyState 상태가 변경될 때 실행됨( 4라는 상태값이 응답완료)
		xhr.onreadystatechange=callback;
		//서버와 통신하기 위해 필요한 정보를 할당
		xhr.open("get", "AsynServlet");
		//서버와 통신을 요청
		xhr.send();
	}
	function callback(){
		//readyState : 4 서버로부터 데이터를 응답받은 상태
		//status : 200 정상수행
		if(xhr.readyState==4&xhr.status==200){
			//responseText : 서버가 응답한 데이터
			//alert(xhr.responseText);
			document.getElementById("resultView").innerHTML=xhr.responseText;
		}
	}
</script>
<form>
	<input type="text" name="userInfo">
	<button type="button" onclick="startAjax()">비동기방식테스트</button>
	<span id="resultView"></span>
</form>
<hr>
<textarea rows="50" cols="50"></textarea>
</body>
</html>