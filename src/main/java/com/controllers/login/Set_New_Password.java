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

@WebServlet("/Set_NewPassword")
public class Set_New_Password extends HttpServlet {
	private static final long serialVersionUID = 1L;
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		HttpSession session=request.getSession();
		RequestDispatcher dispatch;

		BeanClass bean = new BeanClass();
		
		bean.setNewpwd(request.getParameter("newpwd"));
		String username= session.getAttribute("username").toString();
		bean.setUsername(username);
		
		
		if(request.getParameter("newpwd").equalsIgnoreCase(request.getParameter("confrmpwd")))
		{		
			
			System.out.println("pwd "+request.getParameter("newpwd"));
			
			ResetPasswordActionBean action= new ResetPasswordActionBean(bean);
			boolean flag = action.resetPwd();
			if(flag==true)
			{
				
				request.setAttribute("msg", "<h3 align= 'center'> <font color='green'>Password Changed Successfully... </font></h3>");
				dispatch = request.getRequestDispatcher("login.jsp");
				dispatch.include(request, response);
			}
			else
			{
				
				request.setAttribute("msg", "<h3 align= 'center'> <font color='green'>Password Couldn't be changed... </font></h3>");
				dispatch = request.getRequestDispatcher("stu_reset_pwd.jsp");
				dispatch.forward(request, response);
			}
		}
		
		else
		{
		
			request.setAttribute("msg", "<h3 align= 'center'> <font color='green'>Password Mismatch... </font></h3>");
			dispatch = request.getRequestDispatcher("stu_reset_pwd.jsp");
			dispatch.include(request, response);
		}
	
	}

	
}
