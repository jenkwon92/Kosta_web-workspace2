package org.kosta.webstudy27.controller;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.kosta.webstudy27.model.MemberDAO;
import org.kosta.webstudy27.model.MemberVO;

public class LoginController implements Controller {

	@Override
		public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
			String id = request.getParameter("memberId");
			String pass = request.getParameter("memberPass");
			String url = null;

			try {
				MemberVO vo = MemberDAO.getInstance().login(id, pass);
				if (vo != null) {
					HttpSession session = request.getSession(); 
					session.setAttribute("MemberVO", new MemberVO(vo.getId(), null, vo.getName(), vo.getAddress(),vo.getBirthday(),vo.getRegdate()));
					url = "index.jsp";
				} else {
					url = "login-fail.jsp";
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return "redirect:"+url;
	}
}