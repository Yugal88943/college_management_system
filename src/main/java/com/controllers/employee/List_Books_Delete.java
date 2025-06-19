package com.controllers.employee;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.annotation.WebServlet;
@WebServlet("/List_Books_Delete")
public class List_Books_Delete extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		HttpSession session = request.getSession();
		System.out.println("controller is called");
		
		session.setAttribute("course", request.getParameter("course"));
		session.setAttribute("sem", request.getParameter("sem"));
		response.sendRedirect("emp_delete_book.jsp");
	}

}
