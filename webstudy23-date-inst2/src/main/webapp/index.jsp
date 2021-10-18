<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>db sql date 형 테스트</title>
</head>
<body>
<%-- 컨트롤러 영역 테스트를 위한 폼
						@WebServlet("*.do")
		index.jsp  -- FrontControllerServlet -- HandlerMapping -- Controller
																				|
																			 TestController
							  | forward
						test-result.jsp	  												 		
 --%>
<!-- <form action="TestController.do" method="post">
	<button type="submit">테스트</button>
</form> -->
<h3>MVC + Front Controller Design Pattern 상에 db date형 연습</h3>

<%--
		index.jsp -- FrontControllerServlet -- HandlerMapping -- FindProductByIdController -- ProductDAO		      ----- Database 
																											   findProductById(id) : ProductVO	
								|
						 findbyid-fail.jsp ( alert 후 다시 index로 이동 ) 
						 	or 			
						 findbyid-ok.jsp ( 검색된 상품 정보를 제공 ) 																			   
 --%>

<form action="FindProductByIdController.do">
<input type="number" name="productId" placeholder="상품아이디" required="required">
<button type="submit">검색</button>
</form>

</body>
</html>
















