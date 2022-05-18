package controller;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.AddressDao;

@WebServlet("/searchAddressController")
public class SearchAddressController extends HttpServlet {
	
	private AddressDao addressDao; // 멤버변수 AddressDao 선언
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String searchAddress = request.getParameter("searchAddress"); // 검색한 주소값 받아오기
		String msg = request.getParameter("msg");
		
		
		// 디버깅
		System.out.println("SearchAddressController.doPost() searchAddress : " + searchAddress);
		System.out.println("SearchAddressController.doPost() msg : " + msg);
		
		this.addressDao = new AddressDao(); // addressDao.searchAddress() 메서드 사용을 위한 객체 생성
		List<Map<String, Object>> list = addressDao.searchAddress(searchAddress); // 주소 찾기 메서드 실행 후 찾아온 주소 list에 저장
		
		request.setAttribute("searchAddressList", list); // 리스트 값 searchAddressList에 setting
		
		
		if(msg.equals("insertMemberAddr")) { // msg가 insert라면
			request.getRequestDispatcher("/WEB-INF/view/insertMember.jsp").forward(request, response); // 회원가입 페이지로 이동
		} else if (msg.equals("purchaseChangeAddr")) { // msg가 purchase라면
			int productId = Integer.parseInt(request.getParameter("productId"));
			String photoName = request.getParameter("photoName");
			String productName = request.getParameter("productName");
			int quantity = Integer.parseInt(request.getParameter("quantity"));
			int totalPriceByProduct = Integer.parseInt(request.getParameter("totalPriceByProduct"));
			
			// 디버깅
			System.out.println("SearchAddressController.doPost() productId : " + productId);
			System.out.println("SearchAddressController.doPost() photoName : " + photoName);
			System.out.println("SearchAddressController.doPost() productName : " + productName);
			System.out.println("SearchAddressController.doPost() quantity : " + quantity);
			System.out.println("SearchAddressController.doPost() totalPriceByProduct : " + totalPriceByProduct);
			
			request.setAttribute("productId", productId);
			request.setAttribute("photoName", photoName);
			request.setAttribute("productName", productName);
			request.setAttribute("quantity", quantity);
			request.setAttribute("totalPriceByProduct", totalPriceByProduct);
			
			request.getRequestDispatcher("/WEB-INF/view/purchaseByProductChangeAddress.jsp").forward(request, response); // 구매 페이지로 이동
		} else if (msg.equals("updateMemberAddr")) { // msg가 updateMemberAddr 라면
			request.getRequestDispatcher("/WEB-INF/view/updateMember.jsp").forward(request, response); // 회원정보수정 페이지로 이동
		} 
		
	}

}
