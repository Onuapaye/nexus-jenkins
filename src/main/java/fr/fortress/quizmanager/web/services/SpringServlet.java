/**
 * Ce fichier est la propriété de Thomas BROUSSARD
 * Code application :
 * Composant :
 */
package fr.fortress.quizmanager.web.services;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;

import org.springframework.web.context.support.SpringBeanAutowiringSupport;


public class SpringServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/*
	 * (non-Javadoc)
	 * @see javax.servlet.GenericServlet#init()
	 */
//	@Override
//	public void init() throws ServletException {
//		SpringBeanAutowiringSupport.processInjectionBasedOnCurrentContext(this);
//	}
	
	@Override
	public void init(ServletConfig config) throws ServletException {
		super.init(config);
		SpringBeanAutowiringSupport.processInjectionBasedOnCurrentContext(this);
	}

}
