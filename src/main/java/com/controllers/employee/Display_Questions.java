package com.controllers.employee;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.annotation.WebServlet;

@WebServlet("/Display_Questions")
public class Display_Questions extends HttpServlet {
	private static final long serialVersionUID = 1L;
     
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		HttpSession session = request.getSession();
    	
    	session.setAttribute("sub_code", request.getParameter("sub_code"));
    	response.sendRedirect("questions_list_delete.jsp");
    	System.out.println("Controller Called");	
	}

}
