package org.kosta.myboard.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.kosta.myboard.model.BoardDAO;
import org.kosta.myboard.model.PostVO;

public class PostDetailController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String no = request.getParameter("no");
		//조회수를 증가
		BoardDAO.getInstance().updateHits(no);
		//상세 게시물 조회
		PostVO pvo = BoardDAO.getInstance().getPostingByNo(no);
		request.setAttribute("pvo", pvo);
		request.setAttribute("url", "board/post-detail.jsp");
		return "layout.jsp";
	}

}
