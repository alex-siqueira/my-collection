package br.com.rockstorm.mycollection.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/login.action")
public class LoginAction extends HttpServlet{
	private static final long serialVersionUID = -977799568789833938L;

	@Override
	protected void doGet(
			HttpServletRequest request, 
			HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);
	}
	
	@Override
	protected void doPost(
			HttpServletRequest request, 
			HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);
	}
	
	private void processRequest(
			HttpServletRequest request, 
			HttpServletResponse response) throws ServletException, IOException{
		RequestDispatcher disp = null;

		String invalid = request.getParameter("invalid");
		if ("true".equals(invalid)){
			disp = getServletContext().getRequestDispatcher("/WEB-INF/pages/login/error.jsp");
		} else {
			disp = getServletContext().getRequestDispatcher("/WEB-INF/pages/login/login.jsp");
		}
		
		disp.forward(request, response);
	}
}
