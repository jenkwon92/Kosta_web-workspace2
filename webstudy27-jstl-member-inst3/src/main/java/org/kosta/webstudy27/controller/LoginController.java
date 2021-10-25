package org.kosta.webstudy27.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.kosta.webstudy27.model.MemberDAO;
import org.kosta.webstudy27.model.MemberVO;

public class LoginController implements Controller {
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String id=request.getParameter("id");
		String password=request.getParameter("password");
		MemberVO vo=MemberDAO.getInstance().login(id, password);
		String path=null;
		if(vo==null) {
			path="redirect:login-fail.jsp";
		}else {
			path="redirect:index.jsp";
			HttpSession session=request.getSession();
			session.setAttribute("mvo", vo);
		}
		return path;
	}
}
