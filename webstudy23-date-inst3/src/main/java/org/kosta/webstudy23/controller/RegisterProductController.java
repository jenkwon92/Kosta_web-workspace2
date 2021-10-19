package org.kosta.webstudy23.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.kosta.webstudy23.model.ProductDAO;
import org.kosta.webstudy23.model.ProductVO;

public class RegisterProductController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String name = request.getParameter("name");
		String maker = request.getParameter("maker");
		int price = Integer.parseInt(request.getParameter("price"));
		ProductVO vo = new ProductVO(name,maker,price);
		
		ProductDAO.getInstance().registerProduct(vo);
		//redirect 방식으로 이동시켜 재등록되지 않도록 한다 
		//등록 결과화면 대신 상품리스트를 제공하는 컨트롤ㄹ러로 리다이렉트 시킨다
		
		//return "redirect:register-result.jsp";
		return "redirect:AllProductListController.do";
	}

}
