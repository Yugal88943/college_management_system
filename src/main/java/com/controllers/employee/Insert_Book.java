package com.controllers.employee;

import java.io.IOException;
import javax.servlet.annotation.WebServlet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.actionbeans.employee.EmployeeBooksActionBean;
import com.beans.BeanClass;

@WebServlet("/Insert_Book")
public class Insert_Book extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		RequestDispatcher  dispatch;
		BeanClass bean = new BeanClass();
		bean.setSub_code(request.getParameter("sub_code"));
		bean.setSub_name(request.getParameter("sub_name"));
		bean.setBook(request.getParameter("book"));
		bean.setAuthor(request.getParameter("author"));
		bean.setCourse(request.getParameter("course"));
		bean.setSem(Integer.parseInt(request.getParameter("sem")));
		System.out.println(request.getParameter("path"));
		//bean.setPath(path);
		
		bean.setPath(request.getParameter("path"));
	    
		EmployeeBooksActionBean action = new EmployeeBooksActionBean(bean);
		Boolean result=action.insertBook();
		
		if(result==true)
		{
			request.setAttribute("msg","Insertion successful.");
			dispatch = request.getRequestDispatcher("emp_insert_books.jsp");
			dispatch.forward(request, response);
		}
		else{
			request.setAttribute("msg","Insertion Failed..");
			dispatch = request.getRequestDispatcher("emp_insert_books.jsp");
			dispatch.forward(request, response);
		}

	}

}
