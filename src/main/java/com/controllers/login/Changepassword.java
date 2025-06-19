package com.controllers.login;

import java.io.IOException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.actionbeans.login.ResetPasswordActionBean;
import com.beans.BeanClass;

@WebServlet("/Changepassword")
public class Changepassword extends HttpServlet {
	private static final long serialVersionUID = 1L;
   @Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		HttpSession session=request.getSession();
		RequestDispatcher dispatch;
		String username = session.getAttribute("username").toString();
		String password= session.getAttribute("password").toString();
	
		BeanClass bean = new BeanClass();
		bean.setUsername(username);
		bean.setOldpwd(request.getParameter("oldpwd"));
		bean.setNewpwd(request.getParameter("newpwd"));
		
		
		if(request.getParameter("oldpwd").equalsIgnoreCase(password) && request.getParameter("newpwd").equalsIgnoreCase(request.getParameter("confrmpwd")))
		{
						if(session.getAttribute("usertype").toString().equalsIgnoreCase("employee"))
						{
								ResetPasswordActionBean action = new ResetPasswordActionBean(bean);
								boolean flag= action.empChangePassword();
								if(flag == true)
								{
									session.setAttribute("password", request.getParameter("newpwd"));
									request.setAttribute("msg", "<h5 align= 'center'> <font color='green'>Password Changed Successfully... </font></h5>");
									dispatch = request.getRequestDispatcher("change_password.jsp");
									dispatch.include(request, response);
								}
								else
								{
									request.setAttribute("msg", "<h5 align= 'center'> <font color='red'>Password Couldn't be changed...</font></h5>");
									dispatch = request.getRequestDispatcher("change_password.jsp");
									dispatch.forward(request, response);
								}
						}
						
						else if(session.getAttribute("usertype").toString().equalsIgnoreCase("student"))
						{
								ResetPasswordActionBean action = new ResetPasswordActionBean(bean);
								boolean flag= action.stuChangePassword();
								if(flag == true)
								{
									session.setAttribute("password", request.getParameter("newpwd"));
									request.setAttribute("msg", "<h5 align= 'center'> <font color='green'>Password Changed Successfully... </font></h5>");
									dispatch = request.getRequestDispatcher("change_password.jsp");
									dispatch.include(request, response);
								}
								else
								{
									request.setAttribute("msg", "<h5 align= 'center'> <font color='red'>Password Couldn't be changed...</font></h5>");
									dispatch = request.getRequestDispatcher("change_password.jsp");
									dispatch.forward(request, response);
								}
						}
				
				}
		
		else{
			
			if(request.getParameter("oldpwd").equalsIgnoreCase(password))
			{
				//error in cnfrm pwd
				request.setAttribute("msg", "Password Mismatch");
				dispatch = request.getRequestDispatcher("change_password.jsp");
				dispatch.forward(request, response);
				
			}
			
			else
			{
				// error in old pwd
				request.setAttribute("msg", "Wrong Password");
				dispatch = request.getRequestDispatcher("change_password.jsp");
				dispatch.forward(request, response);
			}
		}
	}
	
}

