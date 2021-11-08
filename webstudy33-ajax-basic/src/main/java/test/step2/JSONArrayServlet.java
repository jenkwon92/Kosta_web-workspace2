package test.step2;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONObject;

import model.CarDAO;
import model.CarDTO;

/**
 * Servlet implementation class JSONArrayServlet
 */
@WebServlet("/JSONArrayServlet")
public class JSONArrayServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		JSONArray ja = new JSONArray();
		ja.put("김밥");
		ja.put("라면");
		ja.put("콜라");
		out.print(ja.toString());
		out.close();
	}

}
