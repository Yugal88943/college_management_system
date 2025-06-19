package com.controllers.login;

import java.io.IOException;
//import java.io.PrintWriter;
import javax.servlet.annotation.WebServlet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.actionbeans.login.ResetPasswordActionBean;
import com.beans.BeanClass;

@WebServlet("/Forget_Password")
public class Forget_Password extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	private RequestDispatcher dispatch;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();
		session.setAttribute("username", request.getParameter("username"));
			
		String username = session.getAttribute("username").toString();
		System.out.println("hey "+username);
		BeanClass bean = new BeanClass();
		bean.setUsername(username);
		
				ResetPasswordActionBean action = new ResetPasswordActionBean(bean);
				
				bean = action.stuGetAns();
				String fname= bean.getFirstname();
				
				if(fname==null)
				{
					//out.print("<h3 align= 'center'> <font color='red'>User does not Exist... </font></h3>");
					request.setAttribute("msg","<h3 align= 'center'> <font color='red'>User does not Exist... </font></h3>");
					dispatch = request.getRequestDispatcher("forget_password.jsp");
					dispatch.include(request, response);
				}
				else
				{
					dispatch = request.getRequestDispatcher("stu_get_ans_pwd.jsp");
					dispatch.forward(request, response);
				}
				
			
			}
	
}
