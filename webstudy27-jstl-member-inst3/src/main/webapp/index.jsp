<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원관리</title>
</head>
<body>
	<h3>회원관리( MVC , FrontController , DBCP, EL, JSTL )</h3>
	<%--
			index.jsp -- FrontControllerServlet --HandlerMapping-- FindMemberByIdController -- MemberDAO -- DataSourceManager -- DB 
								|
								findbyid-ok.jsp
								or
								findbyid-fail.jsp
 --%>
	<form action="FindMemberByIdController.do">
		<input type="text" name="id" placeholder="아이디" required="required">
		<button>검색</button>
	</form>
	<%--
 		index.jsp -- FrontControllerServlet -- HandlerMapping -- LoginController -- MemberDAO -- DataSourceManager -- DB  		
  							|
  							| redirect
  							login 성공 :  index.jsp 
  							login 실패 : login-fail.jsp   
  --%>
	<br>
	<br>
	<c:choose>
		<c:when test="${sessionScope.mvo==null}">
			<form action="LoginController.do" method="post">
				<input type="text" name="id" placeholder="아이디" required="required"><br>
				<input type="password" name="password" placeholder="패스워드"
					required="required"><br>
				<button type="submit">로그인</button>
			</form>
			<br>
			<br>
			<%-- 
					1. 회원가입 ( 2시 15분까지 풀이 ) 
					2. 아이디 중복확인 
			--%>
			<a href="register-member.jsp">회원가입</a>
		</c:when>
		<c:otherwise>
 		${sessionScope.mvo.name} 님 로그인 상태 <br>
			<br>
			<a href="LogoutController.do">로그아웃</a>
			<br>
			<br>
			<form action="FindMemberListByAddressController.do">
				<input type="text" name="address" placeholder="주소"
					required="required">
				<button>검색</button>
			</form>
			<br>
			<br>
			<%--
 			 
 			 index.jsp -- update-member.jsp 				------------FrontControllerServlet -- HandlerMapping--UpdateMemberController-- MemberDAO -- DataSourceManager--DB
 			 				아이디 readonly 옵션으로 수정 안되게 한다				| 
 			 				패스워드, 이름 , 주소 , 								  update-result.jsp
 			 				생년월일(type: date ) 은 수정되도록 한다 		
 			 																							
 		
 		 --%>

			<a href="update-member.jsp">회원정보수정</a>
		</c:otherwise>
	</c:choose>



</body>
</html>
























