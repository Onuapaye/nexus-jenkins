package fr.fortress.quizmanager.web.services;

import java.io.IOException;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import fr.fortress.quizmanager.model.Exam;
import fr.fortress.quizmanager.services.ExamService;

/**
 * Servlet implementation class ExamServlet
 */
@WebServlet("/exams")
public class ExamServlet extends SpringServlet {
	private static final long serialVersionUID = 1L;

	@Inject
	ExamService examService;

	/**
	 * Default constructor.
	 */
	public ExamServlet() {

	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		Exam exam = new Exam();

		request.setAttribute("createListOfExams", examService.getAllExams(exam));
		request.getRequestDispatcher("/WEB-INF/views/exam-list.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		final int exam_Id = Integer.parseInt(request.getParameter("updateExam"));

		Exam exam = new Exam();

		List<Exam> lstExams = examService.getAllExams(exam);

		for (int i = 0; i < lstExams.size(); i++) {
			if (exam_Id == lstExams.get(i).getExamId()) {

				request.setAttribute("examId", lstExams.get(i).getExamId());
				request.setAttribute("examTitle", lstExams.get(i).getExamTitleName());
				request.setAttribute("examDescription", lstExams.get(i).getExamDescription());
				//request.setAttribute("className", lstExams.get(i).getClass().getName());

				request.getRequestDispatcher("/WEB-INF/views/update-exam.jsp").forward(request, response);

			}
		}
	}

}
