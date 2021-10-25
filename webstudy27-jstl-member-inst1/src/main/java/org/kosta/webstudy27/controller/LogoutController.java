package org.kosta.webstudy27.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LogoutController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		HttpSession session = request.getSession(false); //기존세션이 있을때만
		if(session != null)
			session.invalidate();
		return "redirect:index.jsp";
	}
}