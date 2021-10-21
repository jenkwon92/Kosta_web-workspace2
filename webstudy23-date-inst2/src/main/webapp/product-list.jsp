<%@page import="org.kosta.webstudy23.model.ProductVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품리스트</title>
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
	<div class="container pt-4">
		<%-- pt : padding top --%>
		<a href="index.jsp">Home</a><br>
		<br>
		<%
		@SuppressWarnings("unchecked")
		ArrayList<ProductVO> list = (ArrayList<ProductVO>) request.getAttribute("productList");
		%>
		<table class="table table-bordered table-hover">
			<thead>
				<tr class="bg-primary">
					<th>상품명</th>
					<th>제조사</th>
					<th>등록일</th>
				</tr>
			</thead>
			<tbody>
				<%
				for (int i = 0; i < list.size(); i++) {
				%>
				<tr>
					<%--   상품명을 클릭하면 상세보기가 되도록 링크를 부여한다  --%>
					<td><a href="FindProductByIdController.do?productId=<%=list.get(i).getId()%>"><%=list.get(i).getName()%></a></td>
					<td><%=list.get(i).getMaker()%></td>
					<td><%=list.get(i).getRegDate()%></td>
				</tr>
				<%
				}
				%>
			</tbody>
		</table>
	</div>
	<%-- div container --%>
</body>
</html>



















