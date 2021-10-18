<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Web MVC , FrontController</title>
</head>
<body>
<h3>Model 2 Architecture MVC, Singleton , Front Controller Design Pattern</h3>
<%--
		index.jsp --- FrontControllerServlet --- FindCustomerByIdController --- DAO --- DB 
							|
							findbyid-ok.jsp
							or
							findbyid-fail.jsp

 --%>
<%--
		step6에서는 command 를 컨트롤러 .do 스타일로 변경해서 적용해본다
 --%>
<form action="FindCustomerByIdController.do" method="get">
<!-- <input type="hidden" name="command" value="FindCustomerByIdController"> -->
<input type="text" name="id" placeholder="고객아이디" required="required">
<button type="submit">검색</button>
</form>
<br><br>
<form action="RegisterCustomerController.do" method="post">
<!-- <input type="hidden" name="command" value="RegisterCustomerController"> -->
<input type="text" name="customerInfo" placeholder="고객정보" required="required">
<button type="submit">등록</button>
</form>
<br><br>
<form action="UpdateCustomerController.do" method="post">
<!-- <input type="hidden" name="command" value="UpdateCustomerController"> -->
<input type="text" name="customerInfo" placeholder="고객정보" required="required">
<button type="submit">수정</button>
</form>
<br><br>
<form action="DeleteCustomerController.do" method="post">
<!-- <input type="hidden" name="command" value="DeleteCustomerController"> -->
<input type="text" name="customerId" placeholder="고객아이디" required="required">
<button type="submit">삭제</button>
</form>
<br><br><br>
<img src="image/frontcontroller.png">
</body>
</html>













