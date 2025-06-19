package com.actionbeans.admin;

import java.sql.*;
import java.util.List;
import java.util.ArrayList;
import com.actionbeans.login.PasswordGenerationActionBean;
import com.beans.BeanClass;
import com.database.Dao;

public class AdminActionBean
{
    private static final java.util.logging.Logger logger = java.util.logging.Logger.getLogger(AdminActionBean.class.getName());
	private final BeanClass bean;
	private final Connection connection;
	private PreparedStatement prepare;
	private int result;
	private boolean flag;
	private final String password;
	private ResultSet resultset;
	private ResultSetMetaData metadata;
	private List<Object> row = new ArrayList<>();
	private final List<List<Object>> data = new ArrayList<>();
	private final String insertQuery="insert into employee_details values(?,?,?,?,?,?)";
	private final String selectQuery="select * from employee_details";
	private final String deleteQuery="delete from employee_details where username=?";
	private final String showPwdQuery="select * from employee_details where username=?";
	
	public AdminActionBean(BeanClass bean)
	{
		this.bean= bean;
		connection=Dao.getConnect();
		password = PasswordGenerationActionBean.getPassword();
	}
	
	public boolean createEmployee()
	{
		try
		{
			prepare = connection.prepareStatement(insertQuery);
			
			prepare.setString(1, bean.getFirstname());
			prepare.setString(2, bean.getLastname());
			prepare.setString(3, bean.getUsername());
			prepare.setString(4, password);
			prepare.setString(5, bean.getMailid());
			prepare.setString(6, bean.getContact());
			
			result = prepare.executeUpdate();
			
			if(result==1)
			{
				flag = true;
				
					prepare=connection.prepareStatement(showPwdQuery);
					prepare.setString(1, bean.getUsername());
					
					resultset = prepare.executeQuery();
					while(resultset.next())
						{
							bean.setUsername((resultset.getString(3)));
							bean.setPassword(resultset.getString(4));
						}
			}
			else
			{
				flag = false;
			}
		}
		
		catch(SQLException e)
		{
			logger.severe(e.getMessage());
		}
		catch(RuntimeException e)
		{
			logger.severe(e.getMessage());
		}
		
		return flag;
	}

	public List<List<Object>> listEmployee()
	{
		try{
			prepare = connection.prepareStatement(selectQuery);
			resultset = prepare.executeQuery();
			metadata = resultset.getMetaData();
			int cols = metadata.getColumnCount();
			logger.info(String.format("cols %d", cols));
				while(resultset.next())
				{
					row = new ArrayList<>();		
						for(int i=1;i<=cols;i++)
						{		
							row.add(resultset.getObject(i));
						}
						data.add(row);
						logger.info("row added");
					}
		}
		catch(SQLException exception)
		{
			logger.severe(exception.getMessage());
		}
		catch(RuntimeException exception)
		{
			logger.severe(exception.getMessage());
		}
		return data;
	}
	
	public ResultSet getUsername()
	{
		try{
			prepare=connection.prepareStatement(selectQuery);
			resultset = prepare.executeQuery();
		}
		catch(SQLException exception)
		{
			logger.severe(exception.getMessage());
		}
		catch(RuntimeException exception)
		{
			logger.severe(exception.getMessage());
		}
		return resultset;				
	}

	public boolean deleteEmployee()
	{
		try{
		prepare = connection.prepareStatement(deleteQuery);
		prepare.setString(1, bean.getUsername());
		result = prepare.executeUpdate();
			if(result>0)
			{
				logger.info("Success");
				flag = true;
			}
			else{
				flag = false;
			}
		}
		catch(SQLException exception)
		{
			logger.severe(exception.getMessage());
		}
		catch(RuntimeException exception)
		{
			logger.severe(exception.getMessage());
		}
		return flag;
	}
}
