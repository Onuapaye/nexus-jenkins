package fr.fortress.quizmanager.web.services;

import java.io.IOException;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import fr.fortress.quizmanager.model.ApplicationUser;
import fr.fortress.quizmanager.services.ApplicationUserService;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet(urlPatterns = "/login")
public class LoginServlet extends SpringServlet {
	private static final long serialVersionUID = 1L;

	// private LoginService loginService = new LoginService();

	@Inject
	ApplicationUserService applicationUserService;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LoginServlet() {
		super();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// response.getWriter().append("Served at: ").append(request.getContextPath());
		request.getRequestDispatcher("/WEB-INF/views/login.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// doGet(request, response);

		String userName = request.getParameter("username");
		String userPassword = request.getParameter("pass");
		//String userFullName = "";
		String isUserStudent = request.getParameter("userIsStudent");

		boolean isUserValid = applicationUserService.isUserAuthenticated(userName, userPassword);

		if (isUserStudent == null) {

			if (isUserValid) {

				request.getSession().setAttribute("userName", userName);

				request.getSession().setAttribute("userIsStudent", isUserStudent);

				ApplicationUser users = new ApplicationUser();
				List<ApplicationUser> userList = applicationUserService.getAllUser(users);
				
				//a for loop to get the user full name into the http session
				for (int i = 0; i < userList.size(); i++) {
					if (userName.equals(userList.get(i).getUserName())) {
						request.getSession().setAttribute("userFullName", (userList.get(i).getUserFullName()));
					}
				}

				response.sendRedirect("dashboard");
			} else {
				request.setAttribute("errorMessage", "Invalid Username or Password entered.");
				request.getRequestDispatcher("/WEB-INF/views/login.jsp").forward(request, response);
			}

		} else { // if user is a student, validate f

		}

	}

}
