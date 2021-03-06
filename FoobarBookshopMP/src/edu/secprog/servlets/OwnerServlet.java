package edu.secprog.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;

import edu.secprog.dto.User;
import edu.secprog.services.FeedbackManager;
import edu.secprog.services.ItemManager;
import edu.secprog.services.UserManager;

/**
 * Servlet implementation class OwnerServlet
 */
@WebServlet(urlPatterns={"/OwnerServlet", "/getOwner"})
public class OwnerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OwnerServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		process(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		process(request, response);
		
	}

	protected void process(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String owner;
		int id;
		switch(request.getServletPath()){
			case "/OwnerServlet":
				String ownerName = request.getParameter("owner");
				System.out.println(ownerName);
				
				HttpSession session = request.getSession();
				//session.setAttribute("owner", ownerName);
				String username = (String) session.getAttribute("username");
				
				request.setAttribute("user", UserManager.getUser(username));
				request.setAttribute("owner", UserManager.getUser(ownerName));
				request.setAttribute("feedbacks", FeedbackManager.getAllFeedbacks(ownerName));
				request.getRequestDispatcher("Owner_Profile.jsp").forward(request, response);
				break;
			case "/getOwner":
				id = Integer.parseInt(request.getParameter("id"));
				owner = ItemManager.getOwner(id);
				User user = UserManager.getUser(owner);
				Gson g2 = new Gson();
				response.setContentType("application/json");
				PrintWriter pw2 = response.getWriter();
				pw2.write(g2.toJson(user));
				System.out.println(g2.toJson(user));
				break;
		}
	}
}
