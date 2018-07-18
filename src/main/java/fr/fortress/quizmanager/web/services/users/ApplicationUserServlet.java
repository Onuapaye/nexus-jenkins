package fr.fortress.quizmanager.web.services.users;

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
import fr.fortress.quizmanager.web.services.SpringServlet;

/**
 * Servlet implementation class ApplicationUserServlet
 */
@WebServlet("/users")
public class ApplicationUserServlet extends SpringServlet {
	private static final long serialVersionUID = 1L;
	
	@Inject
	ApplicationUserService applicationUserService;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ApplicationUserServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ApplicationUser user = new ApplicationUser();
		
		request.setAttribute("listOfUsers", applicationUserService.getAllUser(user));
		request.getRequestDispatcher("/WEB-INF/views/user-list.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		final String username = request.getParameter("updateUser");

		ApplicationUser appUser = new ApplicationUser();

		List<ApplicationUser> lstUser = applicationUserService.getAllUser(appUser);

		for (int i = 0; i < lstUser.size(); i++) {
			if (username.equals(lstUser.get(i).getUserName())) {
				
				request.setAttribute("userName", lstUser.get(i).getUserName());
				request.setAttribute("userFullName", lstUser.get(i).getUserFullName());
				
				request.getRequestDispatcher("/WEB-INF/views/update-user.jsp").forward(request, response);
				
			}/* else {

				response.sendRedirect("users");
			}*/
		}
	}

}
