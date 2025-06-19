package com.controllers.hostel;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.annotation.WebServlet;

import com.actionbeans.hostel.HostelFormActionBean;
import com.beans.BeanClass;

@WebServlet("/Create_Student")
public class Create_Student extends HttpServlet {
	private static final long serialVersionUID = 1L;
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		
		RequestDispatcher dispatch;
		BeanClass bean = new BeanClass();
		String name=request.getParameter("wname");
		System.out.print("Warden Name Servlet"+name);
		bean.setWname(name);
		bean.setTroom(Integer.parseInt(request.getParameter("troom")));
		bean.setSname(request.getParameter("sname"));
		
		bean.setCourse(request.getParameter("course"));
		bean.setRollno(Integer.parseInt(request.getParameter("rollno")));
		bean.setRoomno(Integer.parseInt(request.getParameter("roomno")));
		bean.setFloor(request.getParameter("floor"));
		bean.setPhno(request.getParameter("contact"));
		bean.setMailid(request.getParameter("mailid"));
		bean.setGender(request.getParameter("gender"));
		bean.setAddress(request.getParameter("address"));
		bean.setFees(Float.parseFloat(request.getParameter("fees")));
		
		HostelFormActionBean action = new HostelFormActionBean(bean);
		
		if(action.createStudent()==true)
		{
			request.setAttribute("msg",  "Student created sucessfully");
			
			dispatch = request.getRequestDispatcher("new_stuhosdetail.jsp");
			dispatch.forward(request, response);
			
		}
		
		else
		{
			request.setAttribute("msg", "<h3 align= 'center'> <font color='red'>Student Couldn't be created.</font></h3>");
			dispatch = request.getRequestDispatcher("new_stuhosdetail.jsp");
			dispatch.forward(request, response);
		}
		
		}

}
