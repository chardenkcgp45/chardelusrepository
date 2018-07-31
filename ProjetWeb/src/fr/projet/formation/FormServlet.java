package fr.projet.formation;

import java.io.IOException;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class FormServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		System.out.println("WelcomeServlet.doGet");
		
		req.setAttribute("today", new Date());
		
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/WEB-INF/jspf/form.jsp");
				
		dispatcher.forward(req, resp);
	}
	
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("FormulaireServlet.doPost");
		boolean validate = validate(req);
		
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(("/WEB-INF/jspf/form.jsp"));
		dispatcher.forward(req, resp);
		
	}
		private static boolean validate(HttpServletRequest req) {
			
			boolean validate =true;
			
			String nom = req.getParameter("nom");
			if(nom == null || nom.isEmpty()) {
				req.setAttribute("errorName",  "Nom obligatoire");
				validate = false;
			}
			
			String code = req.getParameter("code");
			if(code == null || code.isEmpty()) {
				req.setAttribute("errorCode",  "Code obligatoire");
				validate= false;
			}
			
			String prix = req.getParameter("prix");
			if(prix == null || prix.isEmpty()) {
				req.setAttribute("errorPrix",  "Prix obligatoire");
				validate= false;
			}
			
			String categorie = req.getParameter("categorie");
			if(categorie == null || categorie.isEmpty()) {
				req.setAttribute("errorCategorie",  "Catégorie obligatoire");
				validate= false;
			}
			
			String poids = req.getParameter("poids");
			if(poids == null || poids.isEmpty()) {
				req.setAttribute("errorPoids",  "Poids obligatoire");
				validate= false;
			}
			
			String date = req.getParameter("Date");
			if(date == null || date.isEmpty()) {
				req.setAttribute("errorDate",  "Date obligatoire");
				validate= false;
			}
			
			String description = req.getParameter("description");
			if(description == null || description.isEmpty()) {
				req.setAttribute("errorDescription",  "Description obligatoire");
				validate= false;
			}
			return validate;
		}
		
}
