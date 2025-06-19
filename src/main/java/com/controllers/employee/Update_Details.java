package com.controllers.employee;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.actionbeans.employee.EmployeeUpdateDetailsActionBean;
import com.beans.BeanClass;
import javax.servlet.annotation.WebServlet;

@WebServlet("/Update_Details")
public class Update_Details extends HttpServlet {
	private static final long serialVersionUID = 1L;
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		try{
			HttpSession session=request.getSession();
			RequestDispatcher dispatch;
		
			BeanClass bean=new BeanClass();
			
			bean.setFirstname(session.getAttribute("firstname").toString());
			bean.setUsername(session.getAttribute("username").toString());
			
			bean.setContact(request.getParameter("contact"));
			bean.setMailid(request.getParameter("mailid"));
			
			EmployeeUpdateDetailsActionBean action=new EmployeeUpdateDetailsActionBean(bean);
			
			boolean result = action.updateRecord();
			
			if(result==true)
			{
				request.setAttribute("msg","<h3 align= 'center'> <font color='green'>Updation done Sucessfully...</font></h3>");
				dispatch = request.getRequestDispatcher("emp_update_details.jsp");
				dispatch.include(request, response);
			}
		    else
			{
		    	request.setAttribute("msg","Updation failed..");
				dispatch = request.getRequestDispatcher("emp_update_details.jsp");
				dispatch.forward(request, response);
			}
		}
		catch (ServletException | IOException ex)
		{
			getServletContext().log("Error in Update_Details servlet", ex);
		}
	}

}
