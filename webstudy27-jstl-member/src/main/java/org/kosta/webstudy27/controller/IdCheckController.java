package org.kosta.webstudy27.controller;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.kosta.webstudy27.model.MemberDAO;

public class IdCheckController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String id = request.getParameter("id");
		String path = null;
		try {
			boolean  result =MemberDAO.getInstance().idCheck(id);
			if(result == false) { //아이디 존재하지 않음
				path="idcheck-ok.jsp";
			}else { //아이디 존재
				path="idcheck-fail.jsp";
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return path;
	}

}
