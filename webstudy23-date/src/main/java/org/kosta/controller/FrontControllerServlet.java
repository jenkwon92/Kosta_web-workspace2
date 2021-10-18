package org.kosta.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * .do 스타일 요청을 모두 처리하기 위해 url-pattern 설정을 *.do로 할당
 */
@WebServlet("*.do")
public class FrontControllerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doDispatch(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		/* client 의 요청 uri 로 부터 컨트롤러(command)를 가져온다
		 * HanlderMapping 으로부터 Controller 를 반환받는다 
		 * Controller 를 실행한다 
		 * Controller가 실행 후 반환한 path를 이용해 redirect 또는 forward 방식으로 응답하게 view로 이동시킨다
		*/
		try {
			String uri = request.getRequestURI();
			String command = uri.substring(request.getContextPath().length() + 1, uri.length() - 3);
			// System.out.println(command);
			Controller controller = HandlerMapping.getInstance().create(command);
			String path = controller.execute(request, response);
			if(path.startsWith("redirect:"))
				response.sendRedirect(path);
		} catch (Exception e) {
			e.printStackTrace();
			response.sendRedirect("error.jsp");
		}
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doDispatch(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		doDispatch(request, response);
	}

}