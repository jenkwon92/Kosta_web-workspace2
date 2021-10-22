package org.kosta.webstudy27.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.kosta.webstudy27.model.MemberDAO;
import org.kosta.webstudy27.model.MemberVO;

public class FindMemberListByAddressController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String address = request.getParameter("address");
		ArrayList<MemberVO> list = MemberDAO.getInstance().findMemberListByAddress(address);
		String path = null;
		if(list==null) {
			path="list-fail.jsp";
		}else {
			path = "list-ok.jsp";
			request.setAttribute("memberList", list);
		}
		return path;
	}

}
