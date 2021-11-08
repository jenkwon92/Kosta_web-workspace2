package step6;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;

import model.CarDAO;
import model.CarDTO;

/**
 * Servlet implementation class JSONArrayServlet
 */
@WebServlet("/TestJSONArray")
public class TestJSONArray extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		JSONArray ja = new JSONArray();
		ja.put("김밥");
		ja.put("라면");
		ja.put("콜라");
		System.out.println(ja.toString());
		ArrayList<CarDTO> list = CarDAO.getInstance().getCarList("현대");
		JSONArray ja2 = new JSONArray(list);
		System.out.println(ja2.toString());
	}

}
