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
import edu.secprog.services.UserManager;

/**
 * Servlet implementation class FeedbackServlet
 */
@WebServlet("/FeedbackServlet")
public class FeedbackServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FeedbackServlet() {
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
		String owner = request.getParameter("ownerName");
		int rating = Integer.parseInt(request.getParameter("rating"));
		String message = request.getParameter("msg");
		
		Feedback f = new Feedback(rating, message, username, owner);
		FeedbackManager.addFeedback(f);
		request.setAttribute("user", UserManager.getUser(username));
		request.setAttribute("owner", UserManager.getUser(owner));
		request.setAttribute("feedbacks", FeedbackManager.getAllFeedbacks(owner));
		request.getRequestDispatcher("Owner_Profile.jsp").forward(request, response);
	}

}
