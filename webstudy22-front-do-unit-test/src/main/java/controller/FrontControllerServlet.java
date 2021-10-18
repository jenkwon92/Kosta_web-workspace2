package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/**
 * 
 * @WebServlet("*.do") 로 변경해
 * .do로 요청되는 모든 클라인트의 요청을 처리
 *
 */
@WebServlet("*.do")
public class FrontControllerServlet extends HttpServlet{	

	private static final long serialVersionUID = -8940504124782772102L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println(request.getRequestURI());
		System.out.println(request.getContextPath());
		//contextPath와 .do를 제외한 컨트롤러명만 추출
		//System.out.println(request.getRequestURI().substring(request.getContextPath().length()+1,request.getRequestURI().length()-3));
		String uri = request.getRequestURI(); //예) /wesbstudy22-front-do-unit-test/FindController.do
		String contextPath = request.getContextPath(); //예) /webstudy22-front-do-unit-test
		System.out.println(uri.substring(contextPath.length()+1, uri.length()-3));
		//
		String str1 = "/kosta/RegController.do";
		String context = "/kosta";
		System.out.println(str1.substring(6));//RegController.do
		System.out.println(str1.substring(6+1));//RegController.do
		System.out.println(context.length()); //6
		System.out.println(str1.substring(context.length()+1)); //beginIndex 는 7로 할당 (index는 0부터 시작하므로 R부터 시작)
		System.out.println(str1.length()); //23
		System.out.println(str1.substring(0,23-3)); //endIndex를 20으로 할당하면 /kosta/RegController 즉, .do를 제외, 0부터 시작해서 20 index 앞까지
		System.out.println(str1.substring(context.length()+1,str1.length()-3)); 
		//
		String str2 = "/a/b.do";
		String context2 = "/a";
		System.out.println(str2.substring(3,4)); //b만 추출해본다. 직접 index를 입력
		int beginIndex = context2.length()+1; //3
		int endIndex = str2.length()-3; //7-3 = 4
		System.out.println(str2.substring(beginIndex, endIndex)); 
		//줄여서 표현하면
		System.out.println(str2.substring(context2.length()+1, str2.length()-3));
	}
}
