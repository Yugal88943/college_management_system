package com.actionbeans.enquiry;

import java.sql.Connection;
import java.sql.PreparedStatement;
import com.beans.BeanClass;
import com.database.Dao;

public class EnquiryFormActionBean 
{
	private final BeanClass bean;
	private static final java.util.logging.Logger logger = java.util.logging.Logger.getLogger(EnquiryFormActionBean.class.getName());
	private final Connection connection;
	private PreparedStatement prepare;
	private int result;
	private boolean flag;
	private final String insertQuery="insert into enquiry values(?,?,?,?,?,?)";
	
	public EnquiryFormActionBean(BeanClass bean)
	{
		this.bean= bean;
		connection=Dao.getConnect();
	}
	
	public boolean createEnquiry()
	{
		try
		{
			prepare = connection.prepareStatement(insertQuery);
			
			prepare.setString(1, bean.getFname());		
			prepare.setString(2, bean.getLname());
			prepare.setString(3, bean.getCourse());
			prepare.setString(4, bean.getMailid());
			prepare.setString(5, bean.getPhno());
			prepare.setString(6, bean.getCity());
			
			result = prepare.executeUpdate();
			flag= (result == 1);
		}
		
		catch(java.sql.SQLException e)
		{
			logger.log(java.util.logging.Level.SEVERE, "SQL error during enquiry creation", e);
			flag = false;
		}
		catch(NullPointerException e)
		{
			logger.log(java.util.logging.Level.SEVERE, "Null pointer error during enquiry creation", e);
			flag = false;
		}
		
		return flag;
	}
	
	
}
