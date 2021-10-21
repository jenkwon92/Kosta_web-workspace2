<%@page import="org.kosta.webstudy27.model.MemberVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>findbyaddress-ok.jsp</title>
<link rel="stylesheet" type="text/css" href="css/home.css">
</head>
<body>
	<%
	@SuppressWarnings("unchecked")
	ArrayList<MemberVO> list = (ArrayList<MemberVO>) request.getAttribute("MemberList");
	%>
	<div class="container">
		<h3>검색결과</h3>
		<table border="1px solid black"> 
			<thead>
				<tr>
					<th>아이디</th>
					<th>이름</th>
					<th>주소</th>
					<th>생일</th>
					<th>가입일</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${ requestScope.MemberList}" var="m" varStatus="">
				<tr>
					<td>${m.id }</td>
					<td>${m.name }</td>
					<td>${m.address }</td>
					<td>${m.birthday }</td>
					<td>${m.regdate }</td>
					
				
				</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>