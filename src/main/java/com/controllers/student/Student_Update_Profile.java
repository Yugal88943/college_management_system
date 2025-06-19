package com.controllers.student;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.actionbeans.student.StudentUpdateDetailsActionBean;
import com.beans.BeanClass;
import javax.servlet.annotation.WebServlet;

@WebServlet("/Student_UpdateProfile")
public class Student_Update_Profile extends HttpServlet {
	private static final long serialVersionUID = 1L;
    @Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		try{
			HttpSession session=request.getSession();
			RequestDispatcher dispatch;
		
			String username = session.getAttribute("username").toString();
			String fname = session.getAttribute("firstname").toString();
			Long reg_no=Long.parseLong(username);
			
			BeanClass bean = new BeanClass();
			bean.setFather_name(request.getParameter("fathername"));
			bean.setAddress(request.getParameter("address"));
			bean.setDob(request.getParameter("dob"));
			bean.setQuestion(request.getParameter("question"));
			bean.setAnswer(request.getParameter("answer"));
			bean.setReg_no(reg_no);
			bean.setFirstname(fname);
			
			StudentUpdateDetailsActionBean action = new StudentUpdateDetailsActionBean(bean);
			boolean result = action.updateRecord();
			
			if(result==true)
			{
			
				request.setAttribute("msg","<h3 align= 'center'> <font color='green'>Updation done Sucessfully...</font></h3>");
				dispatch = request.getRequestDispatcher("student_updateprofile.jsp");
				dispatch.include(request, response);
			}
		    else
			{
		    	request.setAttribute("msg","Updation failed..");
				dispatch = request.getRequestDispatcher("student_updateprofile.jsp");
				dispatch.forward(request, response);
			}
		}
		catch (IOException | ServletException exception)
		{
			request.setAttribute("msg", "An error occurred while updating the profile.");
			RequestDispatcher dispatch = request.getRequestDispatcher("student_updateprofile.jsp");
			dispatch.forward(request, response);
		}
	}
}
