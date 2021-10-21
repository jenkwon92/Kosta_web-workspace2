package org.kosta.webstudy27.controller;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.kosta.webstudy27.model.MemberDAO;
import org.kosta.webstudy27.model.MemberVO;


public class FindMemberListByAddressController implements Controller {
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String address = request.getParameter("memberAddress");
		ArrayList<MemberVO> list = MemberDAO.getInstance().findMemberListByAddress(address);
		request.setAttribute("MemberList", list);
		return "findbyaddress-result.jsp";	
	}
}