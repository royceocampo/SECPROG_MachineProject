package edu.secprog.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import edu.secprog.dto.Item;
import edu.secprog.services.ItemManager;

/**
 * Servlet implementation class LendServlet
 */
@WebServlet(urlPatterns={"/LendServlet", "/LendBook", "/LendCalculator", "/LendNotebook", "/LendOther", "/LendSchoolSupplies", "/LendUmbrella", "/LendUSB"})
public class LendServlet extends HttpServlet {
	 static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LendServlet() {
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
		String itemName;
		String owner;
		boolean availability;
		String title;
		String author;
		int pubYear;
		String language;
		String subject;
		String professor;
		String ytt;
		String brand;
		String type;
		String color;
		int usbSize;
		String desc;
		
		HttpSession session = request.getSession();
		owner = (String) session.getAttribute("username");
		
		switch(request.getServletPath()){
		case "/LendBook":
			itemName = request.getParameter("itemName");
			availability = true;
			title = request.getParameter("title");
			author = request.getParameter("author");
			pubYear = Integer.parseInt(request.getParameter("year"));
			language = request.getParameter("language");
			
			Item newbook = new Item(itemName, owner, availability, title, author, pubYear, language, "book");
			new ItemManager().addItem(newbook);
			
			request.getRequestDispatcher("Lend_Successful.jsp").forward(request, response);
			break;
			
		case "/LendCalculator":
			itemName = request.getParameter("itemName");
			availability = true;
			brand = request.getParameter("brand");
			
			Item newcalculator = new Item(itemName, owner, availability, brand, "calculator");
			new ItemManager().addItem(newcalculator);
			
			// direct the user to Home.jsp
			request.getRequestDispatcher("Lend_Successful.jsp").forward(request, response);
			break;
			
		case "/LendNotebook":
			itemName = request.getParameter("itemName");
			availability = true;
			subject = request.getParameter("subject");
			professor = request.getParameter("prof");
			ytt = request.getParameter("ytt");
			
			Item newnotebook = new Item(itemName, owner, availability, subject, professor, ytt, "notebook");
			new ItemManager().addItem(newnotebook);

			request.getRequestDispatcher("Lend_Successful.jsp").forward(request, response);
			break;
			
		case "/LendOther":
			itemName = request.getParameter("itemName");
			availability = true;
			brand = request.getParameter("brand");
			desc = request.getParameter("desc");
			
			Item newother = new Item(itemName, owner, availability, brand, desc, "other");
			new ItemManager().addItem(newother);
			
			request.getRequestDispatcher("Lend_Successful.jsp").forward(request, response);
			break;
		
		case "/LendSchoolSupplies":
			itemName = request.getParameter("itemName");
			availability = true;
			brand = request.getParameter("brand");
			color = request.getParameter("color");
			
			Item newss = new Item(itemName, owner, availability, brand, color);
			new ItemManager().addItem(newss);
			
			// direct the user to Home.jsp
			request.getRequestDispatcher("Lend_Successful.jsp").forward(request, response);
			break;
		
		case "/LendUmbrella":
			itemName = request.getParameter("itemName");
			availability = true;
			color = request.getParameter("color");
			
			Item newumbrella = new Item(itemName, owner, availability, color, "umbrella");
			new ItemManager().addItem(newumbrella);
			
			request.getRequestDispatcher("Lend_Successful.jsp").forward(request, response);
			break;
		
		case "/LendUSB":
			itemName = request.getParameter("itemName");
			availability = true;
			brand = request.getParameter("brand");
			usbSize = Integer.parseInt(request.getParameter("size"));
			
			Item newusb = new Item(itemName, owner, availability, brand, usbSize, "usb");
			new ItemManager().addItem(newusb);
			
			request.getRequestDispatcher("Lend_Successful.jsp").forward(request, response);
			break;
		}
	}
	
}
