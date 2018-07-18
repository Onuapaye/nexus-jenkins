package fr.fortress.quizmanager.web.services.users;

import fr.fortress.quizmanager.model.ApplicationUser;
import fr.fortress.quizmanager.services.ApplicationUserService;
import fr.fortress.quizmanager.web.services.SpringServlet;
import java.io.IOException;
import javax.inject.Inject;
import javax.servlet.Servlet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class UpdateUser
 */
@WebServlet("/update-user")
public class UpdateUserServlet extends SpringServlet implements Servlet {
	private static final long serialVersionUID = 1L;

	@Inject
	ApplicationUserService appUserService;

	/**
	 * Default constructor.
	 */
	public UpdateUserServlet() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.getRequestDispatcher("/WEB-INF/views/update-user.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		ApplicationUser user = new ApplicationUser();
		user.setUserFullName(request.getParameter("userFullName"));
		user.setUserName(request.getParameter("hiddenUserId"));
		user.setUserPassword(request.getParameter("passWord"));
		
		boolean userUpdated = appUserService.updateApplicationUser(user);
		if(userUpdated == true) {
			response.sendRedirect("users");
		}else {
			request.setAttribute("errorMessage", "Invalid Username or Password entered.");
			request.getRequestDispatcher("/WEB-INF/views/update-user.jsp").forward(request, response);
		}
		
	}

}
