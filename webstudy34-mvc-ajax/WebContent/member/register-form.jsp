<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>  

<div class="row">
<div class="col-sm-8 offset-sm-2">
<form action="" method="post" id="registerForm">
<input type="text" name="id" id="memberId" required="required" placeholder="아이디" onkeyup="checkId()">
<span id="checkResult"></span><br>
<input type="password" name="password" required="required" placeholder="패스워드"><br>
<input type="text" name="name" required="required" placeholder="이름"><br>
<input type="text" name="address" required="required" placeholder="주소"><br>
<input type="submit" value="회원가입">
</form>
<%-- memberId id text 입력양식에 keyup 이벤트를 이용해서 
아이디 중복확인을 ajax 방식으로 처리할 수 있다  --%>
<script type="text/javascript">
	function checkId(){
		//아이디 입력텍스트에 기술한 정보를 span 영역에 표현해본다
		document.getElementById("checkResult").innerHTML=document.getElementById("memberId").value;
	}
</script>
</div>
</div>