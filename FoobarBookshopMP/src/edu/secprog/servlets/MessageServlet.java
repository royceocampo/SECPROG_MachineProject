package edu.secprog.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import edu.secprog.dto.Message;
import edu.secprog.services.FeedbackManager;
import edu.secprog.services.MessageManager;
import edu.secprog.services.UserManager;

/**
 * Servlet implementation class MessageServlet
 */
@WebServlet("/MessageServlet")
public class MessageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MessageServlet() {
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
		String sender = (String) session.getAttribute("username");
		String recipient = request.getParameter("ownerName");
		String content = request.getParameter("content");
		String subj = request.getParameter("subject");
		
		Message m = new Message(sender, recipient, content, subj);
		MessageManager.addMessage(m);
		
		request.setAttribute("user", UserManager.getUser(sender));
		request.setAttribute("owner", UserManager.getUser(recipient));
		request.setAttribute("feedbacks", FeedbackManager.getAllFeedbacks(recipient));
		request.getRequestDispatcher("Owner_Profile.jsp").forward(request, response);
	}

}
