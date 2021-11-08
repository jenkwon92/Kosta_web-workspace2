<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%-- 
		ajax로 회원검색결과를 보여준다 
 --%>
<div class="row">
<div class="col-sm-8 offset-sm-2">
	<input type="text" id="memberId" placeholder="ID"	required="required"> 
	<input type="button" value="검색"  id="findMemberBtn" onclick="startAjax()">
	<br><br>
	<span id="resultView"></span>
</div>
</div>
<script>
	//FindMemberByIdController.do
	function startAjax(){
		let memberId = document.getElementById("memberId").value;		
		if(memberId==""){
			alert("아이디를 입력하세요");
			return;
		}
		//ajax통신을 위한 객체
		let xhr = new XMLHttpRequest();
		xhr.onload=function(){//서버로 부터 응답받았을 때 동작할 익명함수를 등록
			//alert(xhr.responseText);
			document.getElementById("resultView").innerHTML=xhr.responseText;
		}
		xhr.open("get","FindMemberByIdController.do?id="+memberId);
		xhr.send();
	}//starAjax
</script>








