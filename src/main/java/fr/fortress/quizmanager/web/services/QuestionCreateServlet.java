package fr.fortress.quizmanager.web.services;

import java.io.IOException;
import java.util.ArrayList;
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
 * Servlet implementation class QuestionCreateServlet
 */
@WebServlet("/create-question")
public class QuestionCreateServlet extends SpringServlet {
	private static final long serialVersionUID = 1L;

	@Inject
	QuestionService questionService;

	@Inject
	ExamService examService;
	
	/**
	 * Default constructor.
	 */
	public QuestionCreateServlet() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		List<String> questionType = new ArrayList<String>();
		questionType.add("Associative");
		questionType.add("MCQ");
		questionType.add("Open");
		
		Exam exam = new Exam();
		
		request.setAttribute("listOfExamsType", examService.getAllExams(exam));
		request.setAttribute("listOfQuestionTypes", questionType);
		request.getRequestDispatcher("/WEB-INF/views/create-question.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		Question question = new Question();
		QuestionType questionType = null;
		
		//select the question type based on what will be passed by the parameter
		String parameterValue = request.getParameter("questionType");
				
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
				
		question.setQuestionTitle(request.getParameter("questionTitle"));
		question.setQuestionType(questionType);
		question.setQuestionInstruction(request.getParameter("questionInstruction"));
		question.setExamInQuestion(exam);
	
		boolean questionCreated = questionService.createQuestion(question);
		if (questionCreated == true) {
			response.sendRedirect("questions");
		} else {
			//request.setAttribute("errorMessage", "Invalid Username or Password entered.");
			request.getRequestDispatcher("/WEB-INF/views/create-question.jsp").forward(request, response);
		}
	}

}
