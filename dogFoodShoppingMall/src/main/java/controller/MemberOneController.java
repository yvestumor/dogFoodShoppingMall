package controller;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.DogDao;
import dao.MemberDao;

@WebServlet("/memberOneController")
public class MemberOneController extends HttpServlet {
	
	private MemberDao memberDao;
	private DogDao dogDao;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.memberDao = new MemberDao(); // dao호출
		this.dogDao = new DogDao();
		
		HttpSession session = request.getSession(); // 세션 정보 불러오기
		
		String memberId = (String) session.getAttribute("sessionMemberId");
		
		// 회원정보를 보여주는 리스트
		Map<String, Object> memberMap = memberDao.selectMember(memberId);
		 
		request.setAttribute("memberMap", memberMap);
		
		// 애견정보를 보여주는 리스트
		List<Map<String, Object>> memberDogList = dogDao.selectDog(memberId);
		
		request.setAttribute("memberDogList", memberDogList);
		
		// 마이페이지 뷰단으로 포워딩
	    request.getRequestDispatcher("/WEB-INF/view/memberOne.jsp").forward(request, response); 
	     
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
