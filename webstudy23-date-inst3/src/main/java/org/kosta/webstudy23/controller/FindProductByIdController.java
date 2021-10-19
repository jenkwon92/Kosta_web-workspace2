package org.kosta.webstudy23.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.kosta.webstudy23.model.ProductDAO;
import org.kosta.webstudy23.model.ProductVO;

public class FindProductByIdController implements Controller{
	
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String id = request.getParameter("productId");
		ProductVO productInfo = ProductDAO.getInstance().findProductById(id);
		String path = null;
		if(productInfo ==null) {
			path="findbyid-fail.jsp";
		}else {
			path="findbyid-ok.jsp";
			request.setAttribute("productInfo", productInfo);
		}
		return path;
	}

}
