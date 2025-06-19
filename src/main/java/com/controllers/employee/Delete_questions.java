package com.controllers.employee;

import java.io.IOException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.actionbeans.employee.EmployeeQuestionsActionBean;
import com.beans.BeanClass;

@WebServlet("/Delete_Questions")
public class Delete_questions extends HttpServlet {
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
			bean.setExam_ques(values[i]);
		System.out.println("Items selected "+values[i]);
		
		EmployeeQuestionsActionBean action = new EmployeeQuestionsActionBean(bean);
		flag = action.deleteQuestions();
		}
		
		if(flag==true)
		{
			
			request.setAttribute("msg","<h3 align= 'center'> <font color='green'>Deletion Successful... </font></h3>");
			dispatch = request.getRequestDispatcher("questions_list_delete.jsp");
			dispatch.include(request, response);
		}
		else
		{
			
			request.setAttribute("msg","<h3 align= 'center'> <font color='green'>Deletion Failed... </font></h3>");
			dispatch = request.getRequestDispatcher("questions_list_delete.jsp");
			dispatch.include(request, response);
		}
	}

}
