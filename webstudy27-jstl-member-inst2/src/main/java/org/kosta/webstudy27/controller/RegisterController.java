package org.kosta.webstudy27.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.kosta.webstudy27.model.MemberDAO;
import org.kosta.webstudy27.model.MemberVO;

public class RegisterController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String password  = request.getParameter("password");
		String address = request.getParameter("address");
		String birthday = request.getParameter("birthday");
		
		MemberVO mvo = new MemberVO(id,name,password,address,birthday,null);
		MemberDAO.getInstance().regist(mvo);

		return "redirect:regist-result.jsp";
	}

}
