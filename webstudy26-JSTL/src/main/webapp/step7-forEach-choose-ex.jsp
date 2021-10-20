<%@page import="model.PersonVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>JSTL forEach choose</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
	<%
	//컨트롤러에서 공유했다고 가정
	ArrayList<PersonVO> list = new ArrayList<PersonVO>();
	list.add(new PersonVO("아이유", 30));
	list.add(new PersonVO("육성재", 18));
	list.add(new PersonVO("솔지", 22));
	request.setAttribute("personList", list);
	%>
	<%-- 연령대 19 세를 초과하면 성인, 19세 이하이면 미성년이라고 출력되면 된다 --%>
	<div class="container">
		<h2>JSTL forEach choose</h2>
		<table class="table table-bordered table-hover">
			<thead>
				<tr>
					<th>연령대</th>
					<th>이름</th>
					<th>나이</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${requestScope.personList }" var="p">
					<tr>
						<td>
							<c:choose>
								<c:when test="${p.age >19}">
									성인
								</c:when>
								<c:otherwise>
										미성년
								</c:otherwise>
							</c:choose>
						</td>
						<td>${p.name }</td>
						<td>${p.age }</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>
