package com.actionbeans.login;

import java.sql.*;
import com.beans.BeanClass;
import com.database.Dao;


public class LoginActionBean
{
	private static final java.util.logging.Logger logger = java.util.logging.Logger.getLogger(LoginActionBean.class.getName());
	private BeanClass login;
	private Connection connection;
	private PreparedStatement prepare;
	private boolean flag;
	private ResultSet resultset;

	private String empSearchQuery="select * from employee_details";
	private String warSearchQuery="select * from warden_details";
	private String stuSearchQuery="select * from student_profile";

	public LoginActionBean(BeanClass login)
	{
		this.login= login;
		connection=Dao.getConnect();
	}
	 
	public boolean empSearch() {
		try {
			prepare = connection.prepareStatement(empSearchQuery);
			resultset = prepare.executeQuery();
			String username = login.getUsername();
			String password = login.getPassword();
	
			flag = false;
			while (resultset.next()) {
				if (resultset.getString(3).equalsIgnoreCase(username) &&
					resultset.getString(4).equalsIgnoreCase(password)) {
	
					login.setUsername(username);
					login.setFirstname(resultset.getString(1));
					login.setLastname(resultset.getString(2));
	
					flag = true;
					break;
				}
			}
			if (!flag) {
				logger.info("Invalid employee credentials for username: " + username);
			}
		} catch (Exception e) {
			logger.severe("Error during employee search: " + e.getMessage());
		}
		return flag;
	}
	
	public boolean warSearch() {
		String username = login.getUsername();
		String password = login.getPassword();
		try {
			prepare = connection.prepareStatement(warSearchQuery);
			resultset = prepare.executeQuery();
	
			flag = false;
			while (resultset.next()) {
				if (resultset.getString(3).equalsIgnoreCase(username) &&
					resultset.getString(4).equalsIgnoreCase(password)) {
	
					login.setUsername(username);
					login.setFirstname(resultset.getString(1));
					login.setLastname(resultset.getString(2));
	
					flag = true;
					break;
				}
			}
		} catch (Exception e) {
			logger.severe("Error during warden search: " + e.getMessage());
		}
	
		if (!flag) {
			logger.info("Invalid warden credentials for username: " + username);
		}
	
		return flag;
	}
	
	
	
	
	public boolean stuSearch()
	{
		try
		{
			prepare = connection.prepareStatement(stuSearchQuery);
			resultset = prepare.executeQuery();
			String username= login.getUsername();
			String password = login.getPassword();
			flag = false;
			while(resultset.next())
			{
				if(resultset.getString(1).equalsIgnoreCase(username)&&resultset.getString(11).equalsIgnoreCase(password))
				{
					flag=true;
					login.setFirstname(resultset.getString(2));
					login.setLastname(resultset.getString(3));
					login.setCourse(resultset.getString(6));
					login.setBatch(resultset.getInt(5));
					break;
				}
			
			}
			if (!flag) {
				logger.info("Invalid student credentials for username: " + username);
			}
			
		} 
		
		catch (Exception e) {
			logger.severe("Error during student search: " + e.getMessage());
		}
		
		return flag;
	}
	
	public BeanClass getBean()
	{
		return login;
	}
	
}
