package com.controllers.employee;

import java.io.IOException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.actionbeans.employee.StudentsListActionBean;
import com.beans.BeanClass;

@WebServlet("/Delete_Students")
public class Delete_Students extends HttpServlet {
	private static final long serialVersionUID = 1L;
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		RequestDispatcher dispatch;
		boolean flag=false;
		String[] values = request.getParameterValues("delete");
		int a= values.length;
		BeanClass bean = new BeanClass();
		
		for(int i=0;i<a;i++)
		{
			bean.setReg_no(Long.parseLong(values[i]));
		System.out.println("Items selected "+values[i]);
		
		StudentsListActionBean action = new StudentsListActionBean(bean);
		flag=action.deleteStudents();
		
		}
		if(flag==true)
		{
			
			request.setAttribute("msg", "<h3 align= 'center'> <font color='red'>Deletion Successful...  </font></h3>");
			dispatch = request.getRequestDispatcher("emp_showListOfStu.jsp");
			dispatch.include(request, response);
		}
		else
		{
			
			request.setAttribute("msg", "<h3 align= 'center'> <font color='red'>Deletion Failed... </font></h3>");
			dispatch = request.getRequestDispatcher("emp_showListOfStu.jsp");
			dispatch.include(request, response);
		}
		
		
	}

}
