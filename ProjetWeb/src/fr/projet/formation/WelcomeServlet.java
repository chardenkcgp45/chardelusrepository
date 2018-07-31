package fr.projet.formation;

import java.io.IOException;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class WelcomeServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		req.setAttribute("today", new Date());
		
		
		System.out.println("welcomeServlet.doGet");

		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/WEB-INF/jspf/welcome.jsp");

		dispatcher.forward(req, resp);
	}
}
