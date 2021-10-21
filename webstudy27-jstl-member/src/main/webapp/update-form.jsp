<%@page import="org.kosta.webstudy27.model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>update-form</title>
</head>
<body>


<% 
MemberVO vo = (MemberVO)session.getAttribute("MemberVO");
%>
회원정보 수정
<form action="FrontControllerServlet" method="post">
<input type="hidden" name="command" value="UpdateMemberController">
<input type="text" name="memberId" readonly="readonly" placeholder="<%=vo.getId()%>">

<input type="text" name="memberName" required="required" placeholder="<%=vo.getName()%>">
<input type="text" name="memberPass" required="required" placeholder="비밀번호">
<input type="text" name="memberAddress" required="required" placeholder="<%=vo.getAddress()%>">
<input type="date" name="memberBirthday" required="required" placeholder="<%=vo.getBirthday()%>">
<input type="date" name="memberRegdate" readonly="readonly" placeholder="<%=vo.getRegdate()%>">
<button type="submit">수정</button>
</form>
</body>
</html>