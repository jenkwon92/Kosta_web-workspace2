package org.kosta.webstudy20.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * step 6에서는  컨트롤러명.do 스타일로 요청을 처리 
 * url-pattern 설정을 *do로 명시
 */
@WebServlet("*.do")
public class FrontControllerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doDispatch(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			//요청 uri를 통해서 컨트롤러명을 추출(command)
			//String command=request.getParameter("command");
			
			String uri = request.getRequestURI();
			String contextPath = request.getContextPath();
			String command = uri.substring(contextPath.length()+1, uri.length()-3);
			
			Controller controller=HandlerMapping.getInstance().create(command);
			String path=controller.execute(request, response);			
			if(path.startsWith("redirect:")) //redirect: 으로 시작되는 path 이면 
				response.sendRedirect(path.substring(9));
			else
				request.getRequestDispatcher(path).forward(request, response);
		}catch(Exception e) {
			e.printStackTrace();
			response.sendRedirect("error.jsp");
		}
	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doDispatch(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");// http request body 에 한글처리 
		doDispatch(request, response);
	}
}









