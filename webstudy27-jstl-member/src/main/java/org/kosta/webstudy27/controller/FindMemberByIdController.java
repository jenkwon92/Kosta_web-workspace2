package org.kosta.webstudy27.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.kosta.webstudy27.model.MemberDAO;
import org.kosta.webstudy27.model.MemberVO;

public class FindMemberByIdController implements Controller {
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String id=request.getParameter("id");
		MemberVO memberVO =MemberDAO.getInstance().findMemberById(id);
		String path=null;
		if(memberVO==null) {
			path="findbyid-fail.jsp";
		}else {
			path="findbyid-ok.jsp";
			request.setAttribute("memberVO", memberVO);
		}
		return path;
	}
}









