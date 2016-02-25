package edu.secprog.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import edu.secprog.services.AccountDetails;
import edu.secprog.services.AuthenticateUser;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// get user input
		// save user's input inside a session
		// direct user to next page
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		if (AuthenticateUser.checkUser(username, password)){
			// open a new session
			HttpSession session = request.getSession();
			session.setAttribute("username", username);
			
			int getID = AccountDetails.getID(username);
			String accountID = Integer.toString(getID);
			
			Cookie c = new Cookie("username", username);
			c.setMaxAge(60*60*7); // in seconds
			response.addCookie(c);
			Cookie id = new Cookie ("id", accountID);
			request.getRequestDispatcher("welcome.jsp").forward(request, response);
		}
		
		else{
			request.getRequestDispatcher("loginerror.jsp").forward(request, response);
		}
		
		
		
		
//		HttpSession session = request.getSession();
//		session.setAttribute("username", username);
//		
//		RequestDispatcher dispatcher = request.getRequestDispatcher("welcome.jsp");
//		dispatcher.forward(request, response);
		
	}

}
