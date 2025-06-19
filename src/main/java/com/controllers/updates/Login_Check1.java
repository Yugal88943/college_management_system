package com.controllers.updates;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.annotation.WebServlet;

import com.actionbeans.login.LoginActionBean;
import com.beans.BeanClass;
    
@WebServlet("/Login_Check1")
public class Login_Check1 extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        BeanClass login = new BeanClass();
        String userType = "employee";
        System.out.println(userType);

        HttpSession session = request.getSession();
        RequestDispatcher dispatch;

        try {
            if (userType.equalsIgnoreCase("employee")) {
                login.setUsername(request.getParameter("username"));
                login.setPassword(request.getParameter("password"));
                login.setUserType(request.getParameter("user_type"));

                LoginActionBean action = new LoginActionBean(login);

                if (action.empSearch()) {
                    login = action.getBean();
                    session = request.getSession();
                    session.setAttribute("username", login.getUsername());
                    session.setAttribute("password", login.getPassword());
                    session.setAttribute("usertype", login.getUserType());
                    response.sendRedirect("updates.jsp");
                } else {
                    request.setAttribute("msg", "<h3 align= 'center'> <font color='red'>Login Failed... Please Try Again... </font></h3>");
                    dispatch = request.getRequestDispatcher("updateslogin.jsp");
                    dispatch.forward(request, response);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
