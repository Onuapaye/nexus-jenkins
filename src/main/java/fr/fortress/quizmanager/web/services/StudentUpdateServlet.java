package fr.fortress.quizmanager.web.services;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import fr.fortress.quizmanager.model.Student;
import fr.fortress.quizmanager.services.StudentService;

/**
 * Servlet implementation class StudentUpdateServlet
 */
@WebServlet("/update-student")
public class StudentUpdateServlet extends SpringServlet {
	private static final long serialVersionUID = 1L;

	@Inject
	StudentService studentService;
    /**
     * Default constructor. 
     */
    public StudentUpdateServlet() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/WEB-INF/views/update-student.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Student student = new Student();
		student.setStudentEmail(request.getParameter("hiddenStudentEmail"));
		student.setStudentFirstName(request.getParameter("firstName"));
		student.setStudentLastName(request.getParameter("lastName"));
		student.setStudentPassword(request.getParameter("studentPassword"));
		
		boolean studentUpdated = studentService.updateStudent(student);
		if(studentUpdated == true) {
			response.sendRedirect("students");
		}else {
			request.getRequestDispatcher("/WEB-INF/views/update-student.jsp").forward(request, response);
		}
	}

}
