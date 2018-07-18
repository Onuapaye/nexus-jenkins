package fr.fortress.quizmanager.web.services;

import java.io.IOException;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import fr.fortress.quizmanager.model.Question;
import fr.fortress.quizmanager.services.QuestionService;

/**
 * Servlet implementation class QuestionServlet
 */
@WebServlet("/questions")
public class QuestionServlet extends SpringServlet {
	private static final long serialVersionUID = 1L;

	@Inject
	QuestionService questionService;

	/**
	 * Default constructor.
	 */
	public QuestionServlet() {

	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		Question question = new Question();

		request.setAttribute("listOfQuestions", questionService.getAllQuestions(question));
		request.getRequestDispatcher("/WEB-INF/views/question-list.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		final int question_Id = Integer.parseInt(request.getParameter("updateQuestion"));

		Question question = new Question();

		List<Question> lstQuestions = questionService.getAllQuestions(question);

		for (int i = 0; i < lstQuestions.size(); i++) {
			if (question_Id == lstQuestions.get(i).getQuestionId()) {

				request.setAttribute("questionId", lstQuestions.get(i).getQuestionId());
				request.setAttribute("questionTitle", lstQuestions.get(i).getQuestionTitle());
				request.setAttribute("questionInstruction", lstQuestions.get(i).getQuestionInstruction());
				request.setAttribute("questionType", lstQuestions.get(i).getQuestionType());
				request.setAttribute("examId", lstQuestions.get(i).getExamInQuestion().getExamId());
				
				request.getRequestDispatcher("/WEB-INF/views/update-question.jsp").forward(request, response);

			}
		}
	}

}
