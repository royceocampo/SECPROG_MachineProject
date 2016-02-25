package edu.secprog.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import edu.secprog.dto.Feedback;
import edu.secprog.services.FeedbackManager;
import edu.secprog.services.MessageManager;
import edu.secprog.services.UserManager;

/**
 * Servlet implementation class MessageBoxServlet
 */
@WebServlet("/MessageBoxServlet")
public class MessageBoxServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MessageBoxServlet() {
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
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		String username = (String) session.getAttribute("username");
		
		request.setAttribute("user", UserManager.getUser(username));
		request.setAttribute("messages", MessageManager.getMessage(username));
		request.getRequestDispatcher("Messages.jsp").forward(request, response);
	}

}
