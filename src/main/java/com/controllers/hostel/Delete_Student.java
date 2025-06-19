package com.controllers.hostel;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.actionbeans.hostel.HostelFormActionBean;
import com.beans.BeanClass;
import javax.servlet.annotation.WebServlet;
@WebServlet("/Delete_Student")
public class Delete_Student extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		
		RequestDispatcher dispatch;
		boolean flag=false;
		
		String[] values = request.getParameterValues("delete");
		int a= values.length;
		BeanClass bean = new BeanClass();
		
		for(int i=0;i<a;i++)
		{
		bean.setUsername(values[i]);
		HostelFormActionBean action = new HostelFormActionBean(bean);
		flag= action.deleteStudent();	
		}
		if(flag==true)
		{
			request.setAttribute("msg", "<h3 align= 'center'> <font color='red'>Deletion Successful...  </font></h3>");
			
			dispatch = request.getRequestDispatcher("delete_stuhosdetail.jsp");
			dispatch.include(request, response);
		}
		else
		{
			request.setAttribute("msg", "<h3 align= 'center'> <font color='red'>Deletion Failed... </font></h3>");
			
			dispatch = request.getRequestDispatcher("delete_stuhosdetail.jsp");
			dispatch.include(request, response);
		}
		
	}
		
	
}


