package controllers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.AppDAO;
import models.App;

/**
 * Implementation class AppController
 */
@WebServlet("/AppController")
public class AppController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AppController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);

		App app = new App();
		AppDAO dao = new AppDAO();

		try {
			if (request.getParameter("name").equals("") || request.getParameter("description").equals("")
					|| request.getParameter("plan").equals("")) {

				response.sendRedirect("index.jsp");

			} else {

				app.setName(request.getParameter("name"));
				app.setDescription(request.getParameter("description"));
				app.setListPlan(request.getParameter("plan"));
				app.setFeature(request.getParameter("feature"));
				app.setPrice(request.getParameter("price"));

				dao.addApp(app);
				response.sendRedirect("search.jsp");
			}

		} catch (Exception e) {
			throw new RuntimeException("Erro ValidarEvento: " + e);
		}
	}

}
