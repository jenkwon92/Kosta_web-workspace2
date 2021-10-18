<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
      <meta charset="UTF-8">
      <title>db sql date 형  테스트</title>
   </head>
   <body>
      <%-- 컨트롤러 영역 테스트를 위한 폼 
                               @WebServlet("*.do")
               index.jsp -- FrontControllerServlet -- HandlerMapping -- Controller
                                                                                                   |
                                                                                                TestController
                                             |   forward
                                       test-result.jsp
                                                                                                
      --%>
      <form action="TestController.do" method="post">
         <button type="submit">전송</button>      
      </form>
   </body>
</html>