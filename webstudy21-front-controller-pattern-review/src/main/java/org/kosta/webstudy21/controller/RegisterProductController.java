package org.kosta.webstudy21.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.kosta.webstudy21.model.MockDAO;

public class RegisterProductController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		if(request.getMethod().equals("POST")==false)
			throw new MethodNotAllowedException();
		String productInfo=request.getParameter("productInfo");
		MockDAO.getInstance().registerProduct(productInfo);
		return "redirect:register-result.jsp";
	}
}
