package com.controllers.enquiry;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.actionbeans.enquiry.EnquiryFormActionBean;
import com.beans.BeanClass;
import javax.servlet.annotation.WebServlet;
@WebServlet("/Create_Enquiry")
public class Create_Enquiry extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		RequestDispatcher dispatch;
		BeanClass bean = new BeanClass();
		
		bean.setFname(request.getParameter("fname"));
		bean.setLname(request.getParameter("lname"));
		bean.setMailid(request.getParameter("mailid"));
		bean.setCourse(request.getParameter("course"));
		bean.setPhno(request.getParameter("phno"));
		bean.setCity(request.getParameter("city"));	
		
		EnquiryFormActionBean action = new EnquiryFormActionBean(bean);
		
		if(action.createEnquiry()==true)
		{
			request.setAttribute("msg", "<h3 align= 'center'> <font color='red'>  Enquiry created sucessfully.</font></h3>");			
			dispatch = request.getRequestDispatcher("enquiry_form.jsp");
			dispatch.forward(request, response);
			
		}
		
		else
		{
			request.setAttribute("msg", "<h3 align= 'center'> <font color='red'>Enquiry Couldn't be created.</font></h3>");
			dispatch = request.getRequestDispatcher("enquiry_form.jsp");
			dispatch.forward(request, response);
		}
		
		}

}

