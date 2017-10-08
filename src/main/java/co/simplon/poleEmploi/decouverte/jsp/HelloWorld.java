package co.simplon.poleEmploi.decouverte.jsp;

import java.io.IOException;
import java.io.PrintWriter;
import java.time.Instant;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class HelloWorld extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String messageGet;
	private String messagePut;

	public void init() throws ServletException {
		messageGet = "Hello ";
		messagePut = "Bonjour ";
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String message = messageGet;
		String parametre = request.getParameter("nom");
		if (parametre != null) {
			message += parametre;
		} else {
			message += "World";
		}

		response.setContentType("text/html");

		PrintWriter out = response.getWriter();
		out.println("<h1>" + message + "</h1>");
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
//		String message = messagePut;
		String nom = request.getParameter("nom");
		String prenom = request.getParameter("prenom");
		Personne moi=new Personne();
		moi.setNom(nom);
		moi.setPrenom(prenom);
		moi.setAge(51);
		String nom2 = request.getParameter("nom2");
		String prenom2 = request.getParameter("prenom2");
		Personne conjoint=new Personne();
		conjoint.setNom(nom2);
		conjoint.setPrenom(prenom2);
		conjoint.setAge(41);
		
		request.setAttribute("moi", moi);
		request.setAttribute("conjoint", conjoint);
		
		List<Personne> listPersonne=new ArrayList<Personne>();
		listPersonne.add(moi);
		listPersonne.add(conjoint);
		
		request.setAttribute("listUser", listPersonne);
		
		request.getRequestDispatcher("WEB-INF/hello.jsp").forward(request, response);
//		response.setContentType("text/html");
//
//		PrintWriter out = response.getWriter();
//		out.println("<h1>" + message + "</h1>");
	}

	public void destroy() {

	}
}
