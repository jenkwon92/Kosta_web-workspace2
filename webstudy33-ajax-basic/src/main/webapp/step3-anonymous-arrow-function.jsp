<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>step3-anonymous-arrow-function</title>
</head>
<body>
<h3>자바스크립트 익명함수(anonymous function)와 화살표함수(arrow function : ECMA6 추가된 함수)</h3>
<script type="text/javascript">
	//일반적인 함수
	/*
	function hello(){
		alert("hello 일반함수");
	}
	hello();
	*/
	//변수에 익명함수 객체를 할당
	/*
	let hello= function(){
		alert("hello 익명함수");
	}
	hello();
	*/
	//window.onload : 웹페이지가 완전히 로드된 후 발생하는 이벤트
	//alert(document.getElementById("infoDiv")); //null
	//alert(document.getElementById("infoDiv").innerHTML); //error
	
	//window.onload : 웹페이지가 완전히 로드된 후 발생하는 이벤트
	//onload 이벤트 속성에 hi라는 일반함수객체를 등록
	/*
	window.onload=hi;
	function hi(){
		alert("hi"+document.getElementById("infoDiv").innerHTML);
	}
	*/
	//window.onload에 익명함수(anonymous function)로 등록
	/*
	window.onload=function(){
		alert("hi 익명함수 "+document.getElementById("infoDiv").innerHTML);
	}
	*/
	//window.onload 에 화살표함수 (arrow function)로 등록
	window.onload=()=>{
		alert("hi 화살표함수"+document.getElementById("infoDiv").innerHTML);
	}
	
</script>
<br><br>
<div id="infoDiv">
익명함수와 화살표함수를 테스트
</div>
</body>
</html>