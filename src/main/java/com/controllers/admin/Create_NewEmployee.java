package com.controllers.admin;

import java.io.IOException;
//import java.io.PrintWriter;
import javax.servlet.annotation.WebServlet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.actionbeans.admin.AdminActionBean;
import com.beans.BeanClass;

@WebServlet("/Create_NewEmployee")
public class Create_NewEmployee extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
  
  

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
		
		
		RequestDispatcher dispatch;
		BeanClass bean = new BeanClass();
		bean.setFirstname(request.getParameter("firstname"));
		bean.setLastname(request.getParameter("lastname"));
		bean.setUsername(request.getParameter("username"));
		bean.setMailid(request.getParameter("mailid"));
		bean.setContact(request.getParameter("contact"));
		
		AdminActionBean action = new AdminActionBean(bean);
	
		
		if(action.createEmployee())
		{
			request.setAttribute("username", "ID: "+bean.getUsername());
			request.setAttribute("password","Password: "+bean.getPassword());
			
			request.setAttribute("msg", "<h3 align= 'center'> <font color='red'>Employee created sucessfully. </font></h3>");
			
			dispatch = request.getRequestDispatcher("new_employee.jsp");
			dispatch.include(request, response);
			
		}
		else
		{
			request.setAttribute("msg", "<h3 align= 'center'> <font color='red'>Employee Couldn't be created.</font></h3>");
			dispatch = request.getRequestDispatcher("new_employee.jsp");
			dispatch.forward(request, response);
		}
	}

}


