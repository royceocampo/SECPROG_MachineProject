package edu.secprog.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class RegServlet
 */
@WebServlet("/login")
public class RegServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	StringBuilder csvSkills	=	new  StringBuilder();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegServlet() {
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
		String hdnParam = request.getParameter("pagename");
		if(hdnParam.equals("login")){
			String userName	= request.getParameter("username");
			String password	= request.getParameter("password");
			if((userName.equals("admin")) && (password.equals("admin"))){
				HttpSession session = request.getSession();
				session.setAttribute("username", userName);
				
				RequestDispatcher dispatcher = request.getRequestDispatcher("welcome.jsp");
				dispatcher.forward(request, response);
			}
			
			else{
				GetsSets set = new GetsSets();
				set.setEmail(userName);
				set.setPassword(password);
				try{
					int checkUser = DbManager.checkUser(set);
					System.out.println(checkUser);
					if(checkUser == 1){
						HttpSession session = request.getSession();
						session.setAttribute("username", userName);
						
						RequestDispatcher dispatcher = request.getRequestDispatcher("welcome.jsp");
						dispatcher.forward(request, response);
					}
					else{
						response.sendRedirect("login.jsp");
						System.out.println("poop????");
					}
				}
				catch (ClassNotFoundException | SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
		
	}

}