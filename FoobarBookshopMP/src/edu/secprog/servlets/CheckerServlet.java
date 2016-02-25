package edu.secprog.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CheckerServlet
 */
@WebServlet("/CheckerServlet")
public class CheckerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CheckerServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// check if user has logged in
		Cookie[] cookieList = request.getCookies();
		boolean hasLoggedIn = false;
		String username = "anon";
		if(cookieList != null){
		for(Cookie c: cookieList){
			if(c.getName().equals("username")){
				hasLoggedIn = true;
				username = c.getValue();
				break;
			}
		}}
	
		if(hasLoggedIn){
			request.getSession().setAttribute("username", username);
			request.getRequestDispatcher("Home.jsp").forward(request, response);
		}else{
			request.getRequestDispatcher("Login.jsp").forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
