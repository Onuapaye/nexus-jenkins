package fr.fortress.quizmanager.web.services.users;

import java.io.IOException;

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
 * Servlet implementation class CreateUserServlet
 */
@WebServlet("/create-user")
public class CreateUserServlet extends SpringServlet {
	private static final long serialVersionUID = 1L;
       
	
	@Inject
	ApplicationUserService appUserService;
	
	
    /**
     * @see HttpServlet#HttpServlet()
     */ 
    public CreateUserServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.getRequestDispatcher("/WEB-INF/views/create-user.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ApplicationUser user = new ApplicationUser();
		user.setUserFullName(request.getParameter("userFullName"));
		user.setUserName(request.getParameter("userName"));
		user.setUserPassword(request.getParameter("passWord"));
		
		boolean userCreated = appUserService.createApplicationUser(user);
		if(userCreated == true) {
			response.sendRedirect("users");
		}else {
			request.setAttribute("errorMessage", "Invalid Username or Password entered.");
			request.getRequestDispatcher("/WEB-INF/views/create-user.jsp").forward(request, response);
		}

	}

}
