<%@page import="org.kosta.webstudy27.model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	MemberVO vo = (MemberVO)session.getAttribute("MemberVO");
%>
<input type="text" name="memberId" readonly="readonly" placeholder="<%=vo.getId()%>">

<input type="text" name="memberName" required="required" placeholder="<%=vo.getName()%>">
<input type="text" name="memberPass" required="required" placeholder="<%=vo.getPassword()%>">
<input type="text" name="memberAddress" required="required" placeholder="<%=vo.getAddress()%>">
<a href="index.jsp">홈으로</a>
</body>
</html>