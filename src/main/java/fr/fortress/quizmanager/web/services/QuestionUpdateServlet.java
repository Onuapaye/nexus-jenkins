package fr.fortress.quizmanager.web.services;

import java.io.IOException;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import fr.fortress.quizmanager.model.Exam;
import fr.fortress.quizmanager.model.Question;
import fr.fortress.quizmanager.model.QuestionType;
import fr.fortress.quizmanager.services.ExamService;
import fr.fortress.quizmanager.services.QuestionService;

/**
 * Servlet implementation class QuestionUpdate
 */
@WebServlet("/update-question")
public class QuestionUpdateServlet extends SpringServlet {
	private static final long serialVersionUID = 1L;

	@Inject
	QuestionService questionService;
	
	@Inject
	ExamService examService;
	/**
	 * Default constructor.
	 */
	public QuestionUpdateServlet() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.getRequestDispatcher("/WEB-INF/views/update-question.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		Question question = new Question();

		QuestionType questionType = null;

		String parameterValue = request.getParameter("questionDescription");

		switch (parameterValue) {
		case "Associative":
			questionType = QuestionType.ASSOCIATIVE;
			break;
		case "MCQ":
			questionType = QuestionType.MCQ;
			break;
		case "Open":
			questionType = QuestionType.OPEN;
			break;
		default:
			break;
		}

		Exam exam = new Exam();
		List<Exam> examList = examService.getAllExams(exam);
		
		//get exam id from list
		//int exam_id = 0;
		final int size = examList.size();
		for (int i = 0; i < size; i++) {
			if (examList.get(i).getExamTitleName().equals(request.getParameter("examId"))) {
				exam.setExamId(examList.get(i).getExamId());
				exam.setExamTitleName(examList.get(i).getExamTitleName());
				exam.setExamDescription(examList.get(i).getExamDescription());
			}
		}
		
		question.setQuestionId(Integer.parseInt(request.getParameter("hiddenQuestionId")));
		question.setQuestionTitle(request.getParameter("questionTitle"));
		question.setQuestionInstruction(request.getParameter("questionInstruction"));
		question.setQuestionType(questionType);
		question.setExamInQuestion(exam);//.setExamId(Integer.parseInt(request.getParameter("examId")));

		boolean questionUpdated = questionService.updateQuestion(question);
		if (questionUpdated == true) {
			response.sendRedirect("questions");
		} else {
			request.getRequestDispatcher("/WEB-INF/views/update-question.jsp").forward(request, response);
		}
	}

}
