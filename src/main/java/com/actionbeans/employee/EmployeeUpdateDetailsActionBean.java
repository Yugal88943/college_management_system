package com.actionbeans.employee;

import java.sql.*;
import com.beans.BeanClass;
import com.database.Dao;

public class EmployeeUpdateDetailsActionBean 
{
	private static final java.util.logging.Logger logger = java.util.logging.Logger.getLogger(EmployeeUpdateDetailsActionBean.class.getName());
	private final BeanClass bean;
	private final Connection connection;
	private PreparedStatement prepare;
	private ResultSet resultSet;
	private boolean flag;
	private final String selectQuery = "select * from employee_details where firstname=? AND username=?";
	private final String updateQuery = "update employee_details set mailid=?, contact=? where firstname=? AND username=?";

	public EmployeeUpdateDetailsActionBean(BeanClass bean)
	{
		this.bean=bean;
		connection=Dao.getConnect();
	}
	
	public BeanClass displayRecord()
	{
		try{
			prepare=connection.prepareStatement(selectQuery);
			prepare.setString(1, bean.getFirstname());
			prepare.setString(2, bean.getUsername());
			resultSet=prepare.executeQuery();
			
			while(resultSet.next())
			{
				if(bean.getFirstname().equalsIgnoreCase(resultSet.getString(1)))
				{
					bean.setFirstname(resultSet.getString(1));
					bean.setLastname(resultSet.getString(2));
					bean.setUsername(resultSet.getString(3));
					bean.setMailid(resultSet.getString(5));
					bean.setContact(resultSet.getString(6));
					logger.info("bean set");
				}
			}
		}
		catch (java.sql.SQLException | NullPointerException e) {
			logger.severe(e.getMessage());
		}
		
		return bean;
	}

	public boolean updateRecord() 
	{
		try
		{
			prepare=connection.prepareStatement(updateQuery);
			prepare.setString(1, bean.getMailid());
			prepare.setString(2, bean.getContact());
			prepare.setString(3, bean.getFirstname());
			prepare.setString(4, bean.getUsername());
		
			int res=prepare.executeUpdate();
			
			flag = (res == 1);
		}
		catch (java.sql.SQLException | NullPointerException e) {
			logger.severe(e.getMessage());
		}
		return flag;
	}
}
