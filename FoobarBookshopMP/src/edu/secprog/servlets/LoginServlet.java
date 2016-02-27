package edu.secprog.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import edu.secprog.services.UserManager;
//import java.security.MessageDigest;
//import java.math.*

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
		// TODO Auto-generated method stub
		// get the inputs of the user
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		//hashing<not sure pls check
		/*MessageDigest m = MessageDigest.getInstance("MD5");
		m.reset();
		m.update(password.getBytes());
		byte[] digest = m.digest();
		BigInteger bigInt = new BigInteger(1,digest);
		String hashtext = bigInt.toString(16);
		while(hashtext.length() < 32 ){
		  hashtext = "0"+hashtext;
		}
		password = hashtext;*/
				
		// verify if the username and password matches
		if(new UserManager().verifyUser(username, password)){		
		// open a new session
		HttpSession session = request.getSession();
		session.setAttribute("username", username);
		session.setAttribute("password", password);
				
		// add a Cookie
		Cookie cu = new Cookie("username", username);
		Cookie cp = new Cookie("password", password);
		cu.setMaxAge(60*60); // in seconds
		cp.setMaxAge(60*60); // in seconds
		response.addCookie(cu);
		response.addCookie(cp);
				
		// direct the user to Home.jsp
		request.getRequestDispatcher("Home.jsp").forward(request, response);
		}
		//else display error message
		else{
			String str = "Incorrect username or password.";
			HttpSession session = request.getSession();
			session.setAttribute("err_msg", str);
			request.getRequestDispatcher("Error.jsp").forward(request, response);
		}
	}

}
