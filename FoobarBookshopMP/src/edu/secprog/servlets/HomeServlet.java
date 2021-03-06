package edu.secprog.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.secprog.services.UserManager;

/**
 * Servlet implementation class HomeServlet
 */
@WebServlet("/Home")
public class HomeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HomeServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Cookie[] cookieList = request.getCookies();
		String username = null;
		if(cookieList != null){
		for(Cookie c: cookieList){
			if(c.getName().equals("username")){
				username = c.getValue();
				break;
			}
		}
		}
		request.setAttribute("user", UserManager.getUser(username));
		request.getRequestDispatcher("Home.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Cookie[] cookieList = request.getCookies();
		String username = null;
		if(cookieList != null){
		for(Cookie c: cookieList){
			if(c.getName().equals("username")){
				username = c.getValue();
				break;
			}
		}
		}
		request.setAttribute("user", UserManager.getUser(username));
		request.getRequestDispatcher("Home.jsp").forward(request, response);
	}

}
