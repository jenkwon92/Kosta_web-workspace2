package org.kosta.webstudy28.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.kosta.webstudy28.model.EmployeeDAO;

public class HomeController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		int totalCount = EmployeeDAO.getInstance().getTotalCount();
		request.setAttribute("empTotalCount", totalCount);
		return "home.jsp";
	}

}
