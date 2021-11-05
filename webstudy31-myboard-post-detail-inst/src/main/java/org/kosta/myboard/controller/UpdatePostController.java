package org.kosta.myboard.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class UpdatePostController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String no = request.getParameter("no");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
	
		return null;
	}

}
