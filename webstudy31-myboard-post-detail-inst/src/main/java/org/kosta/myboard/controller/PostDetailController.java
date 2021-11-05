package org.kosta.myboard.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.kosta.myboard.model.BoardDAO;
import org.kosta.myboard.model.PostVO;

public class PostDetailController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		//로그인 여부를 체크해서 로그인 상태가 아니면 홈으로 리다이렉트시킨다
		HttpSession session = request.getSession(false);
		if(session ==null||session.getAttribute("mvo")==null)
			return "redirect:ListController.do";
		
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
