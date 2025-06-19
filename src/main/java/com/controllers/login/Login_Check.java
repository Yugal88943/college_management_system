package com.controllers.login;

import java.io.IOException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.actionbeans.login.LoginActionBean;
import com.beans.BeanClass;

@WebServlet("/Login_Check")
public class Login_Check extends HttpServlet
{
	private static final long serialVersionUID = 1L;
	@Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		BeanClass login= new BeanClass();
		String user_type = request.getParameter("user_type");
		HttpSession session = request.getSession();
		RequestDispatcher dispatch;
		try
		{
			if(user_type.equalsIgnoreCase("employee"))
			{
				login.setUsername(request.getParameter("username"));
				login.setPassword(request.getParameter("password"));
				login.setUserType(request.getParameter("user_type"));
				LoginActionBean action = new LoginActionBean(login);
				
				if(action.empSearch())
				{
					login = action.getBean();
					session = request.getSession();
					session.setAttribute("username", login.getUsername());
					session.setAttribute("firstname", login.getFirstname());
					session.setAttribute("lastname", login.getLastname());
					session.setAttribute("password", login.getPassword());
					session.setAttribute("usertype", login.getUserType());
					response.sendRedirect("employeeHome.jsp");
				}
				else
				{
					request.setAttribute("msg","<h3 align= 'center'> <font color='red'>Login Failed... Please Try Again... </font></h3>");
					dispatch = request.getRequestDispatcher("login.jsp");
					dispatch.forward(request, response);
				}
			}
			else if(user_type.equalsIgnoreCase("warden"))
			{
				login.setUsername(request.getParameter("username"));
				login.setPassword(request.getParameter("password"));
				login.setUserType(request.getParameter("user_type"));
				LoginActionBean action = new LoginActionBean(login);
				
				if(action.warSearch())
				{
					login = action.getBean();
					session = request.getSession();
					session.setAttribute("username", login.getUsername());
					session.setAttribute("firstname", login.getFirstname());
					session.setAttribute("lastname", login.getLastname());
					session.setAttribute("password", login.getPassword());
					session.setAttribute("usertype", login.getUserType());
					response.sendRedirect("hostel.jsp");
				}
				else
				{
					request.setAttribute("msg","<h3 align= 'center'> <font color='red'>Login Failed... Please Try Again... </font></h3>");
					dispatch = request.getRequestDispatcher("login.jsp");
					dispatch.forward(request, response);
				}
			}	
			else if(user_type.equalsIgnoreCase("student"))
			{
				login.setUsername(request.getParameter("username"));
				login.setPassword(request.getParameter("password"));
				login.setUserType(request.getParameter("user_type"));
				LoginActionBean action = new LoginActionBean(login);
				
				if(action.stuSearch())
				{
					login = action.getBean();
					session = request.getSession();
					session.setAttribute("username", login.getUsername());
					session.setAttribute("firstname", login.getFirstname());
					session.setAttribute("lastname", login.getLastname());
					session.setAttribute("password", login.getPassword());
					session.setAttribute("course", login.getCourse());
					session.setAttribute("batch", login.getBatch());
					session.setAttribute("usertype", login.getUserType());
					response.sendRedirect("studentHome.jsp");
				}
				else
				{
					request.setAttribute("msg","<h3 align= 'center'> <font color='red'>Login Failed... Please Try Again... </font></h3>");
					dispatch = request.getRequestDispatcher("login.jsp");
					dispatch.forward(request, response);
				}
			}	
			else if(user_type.equalsIgnoreCase("admin"))
			{
				if(request.getParameter("username").equalsIgnoreCase("Yugal")&&(request.getParameter("password").equalsIgnoreCase("yugal")))
					{
					dispatch = request.getRequestDispatcher("AdminHome.jsp");
					dispatch.include(request, response);
					}
				else{
					request.setAttribute("msg","<h3 align= 'center'> <font color='red'>Login Failed... Please Try Again... </font></h3>");
					dispatch = request.getRequestDispatcher("login.jsp");
					dispatch.include(request, response);
				}
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
}
