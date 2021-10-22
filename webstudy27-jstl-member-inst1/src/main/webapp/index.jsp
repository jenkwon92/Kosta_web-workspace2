<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원관리(MVC, FrontController , DBCP, FL, JSTL)</title>
</head>
<body>
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
 	index.jsp -- FrontController -- HandlerMapping -- LoginController -- MemberDAO -- DataSourceManager -- DB
 								|
 								| redirect
 								login 성공 :index.jsp
 								login 실패 : login-fail.jsp
  --%>
 <br><br>
  <c:choose>
  	<c:when test="${sessionScope.mvo == null }">
  		<form action="LoginController.do" method="post">
  			<input type="text" name="id" placeholder="아이디" required="required"><br>
  			<input type="password" name="password" placeholder="패스워드" required="required"><br>
  			<button type="submit">로그인</button>
  		</form>
  	</c:when>
  	<c:otherwise>
  		${sessionScope.mvo.name }님 로그인 상태<br><br>
  		<a href="LogoutController.do">로그아웃</a>
  		<form action="FindMemberListByAddressController.do">
  			<input type="text" name="address" placeholder="주소" required="required">
  			<button>검색</button>
  		</form>
  	</c:otherwise> 
  </c:choose>
</body>
</html>
























