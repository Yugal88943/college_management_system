package com.controllers.employee;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.annotation.WebServlet;

import com.actionbeans.employee.EmployeeUpdatesActionBean;
import com.beans.BeanClass;

@WebServlet("/Delete_Updates")
public class Delete_Updates extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		RequestDispatcher dispatch;
		boolean flag=false;
		//PrintWriter out = response.getWriter();
		System.out.println("hii welcum");
		String[] values = request.getParameterValues("delete");
		int a= values.length;
		BeanClass bean = new BeanClass();
		
		for(int i=0;i<a;i++)
		{
		bean.setNews(values[i]);
		EmployeeUpdatesActionBean action = new EmployeeUpdatesActionBean(bean);
		flag= action.deleteUpdates();
		}
		
		if(flag==true)
		{
			
			request.setAttribute("msg", "<h3 align= 'center'> <font color='green'>Deletion Successful... </font></h3>");
			dispatch = request.getRequestDispatcher("delete_updates.jsp");
			dispatch.include(request, response);
		}
		else
		{
			
			request.setAttribute("msg", "<h3 align= 'center'> <font color='green'>Deletion Failed... </font></h3>");
			dispatch = request.getRequestDispatcher("delete_updates.jsp");
			dispatch.include(request, response);
		}
	}

}
