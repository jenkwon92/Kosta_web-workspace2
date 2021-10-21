package org.kosta.webstudy27.controller;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.kosta.webstudy27.model.MemberDAO;
import org.kosta.webstudy27.model.MemberVO;

public class RegisterMemberController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		String name= request.getParameter("name");
		String address = request.getParameter("address");
		String birthday = request.getParameter("birthday");
		String regdate = request.getParameter("regdate");
		
		MemberVO vo = new MemberVO(id,password,name, address,birthday,regdate);
		
		try {
			MemberDAO.getInstance().registerMember(vo);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return "redirect:register-result.jsp";
	}

}
