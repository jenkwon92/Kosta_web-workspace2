package org.kosta.webstudy27.controller;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.kosta.webstudy27.model.MemberDAO;
import org.kosta.webstudy27.model.MemberVO;

public class UpdateMemberController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		HttpSession session=request.getSession(false);
		if(session==null||session.getAttribute("MemberVO")==null) {//시간이 지나서 끊김//로그인 상태가 아니면 //받아온게 null값
			return "redirect:index.jsp";
			// return; keyword는 메서드 실행을 종료
		}		
		request.setCharacterEncoding("utf-8");
	
		//아이디는 변경되지 않으니까 생성자를 생성하지 않고 set을 해주고싶다
		//String id=request.getParameter("id");
		MemberVO vo = (MemberVO) session.getAttribute("MemberVO");
		
		try {
			//MemberVO vo=new MemberVO(id,password,name,address);
			vo.setName(request.getParameter("memberName"));
			vo.setPassword(request.getParameter("memberPass"));
			vo.setAddress(request.getParameter("memberAddress")); 
			
			MemberDAO.getInstance().updateMember(vo);
			request.setAttribute("MemberVO", vo);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return "redirect:update-result.jsp";
	}

}
