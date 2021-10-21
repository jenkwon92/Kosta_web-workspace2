<%@page import="org.kosta.webstudy27.model.MemberVO"%>
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
<h3>환영합니다</h3>

<%-- 회원아이디로 회원검색 --%>
<form action="FrontControllerServlet" method="get">
<input type="hidden" name="command" value="FindMemberByIdController">
<input type="text" name="id" placeholder="고객아이디" required="required">
<button type="submit">검색</button>
</form>
<br><br>

<%-- 로그인  / 로그아웃--%>
로그인
<form action="FrontControllerServlet"  method="post">
<input type="hidden" name="command" value="LoginController">
<input type="text" name="memberId" required="required" placeholder="아이디">
<input type="password" name="memberPass" required="required" placeholder="비밀번호">
<button type="submit">검색</button>
</form>
<br>
<% 
	MemberVO vo = (MemberVO) session.getAttribute("MemberVO");
	if(vo!=null){
%>
	<%=vo.getName() %>님 로그인 중입니다.
	<br><br>
<form action="FrontControllerServlet">
	<input type="hidden" name="command" value="LogoutController">
	<button type="submit" >로그아웃</button>
</form>
<form action="update-form.jsp">
	<button type="submit" >회원정보수정</button>
</form>
<%}else{ %>
	로그인 되어있지 않습니다
<%} %>
<br><br>
<%-- 회원주소로 회원리스트검색 --%>
회원주소로 회원리스트 검색
<form action="FrontControllerServlet" method="get">
<input type="hidden" name="command" value="FindMemberListByAddressController">
<input type="text" name="memberAddress" placeholder="주소" required="required">
<button type="submit">검색</button>
</form>
<br><br>

<%-- 회원가입 --%>
<a href="register-form.jsp">회원가입</a>
<br><br>
<form action="FrontControllerServlet" method="post">
<input type="hidden" name="command" value="UpdateCustomerController">
<input type="text" name="customerInfo" placeholder="고객정보" required="required">
<button type="submit">수정</button>
</form>
<br><br>
<form action="FrontControllerServlet" method="post">
<input type="hidden" name="command" value="DeleteCustomerController">
<input type="text" name="customerId" placeholder="고객아이디" required="required">
<button type="submit">삭제</button>
</form>
<br><br><br>
</body>
</html>
