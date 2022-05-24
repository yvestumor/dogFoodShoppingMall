package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/adminCheck/adminPageController")
public class AdminPageController extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int level = Integer.parseInt(request.getParameter("level"));
		
		System.out.println(level);
		
		request.setAttribute("level", level);
		request.getRequestDispatcher("/WEB-INF/view/adminPage.jsp").forward(request, response);
	}

}
