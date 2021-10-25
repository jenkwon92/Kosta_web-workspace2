package org.kosta.webstudy27.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.kosta.webstudy27.model.MemberDAO;

public class IdCheckController implements Controller {
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String id=request.getParameter("id");
		boolean result=MemberDAO.getInstance().checkId(id);
		if(result)
			return "idcheck-fail.jsp";
		else
			return "idcheck-ok.jsp";
	}
}
