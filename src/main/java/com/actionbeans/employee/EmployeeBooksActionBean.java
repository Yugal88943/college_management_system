package com.actionbeans.employee;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.util.List;
import java.util.ArrayList;
import com.beans.BeanClass;
import com.database.Dao;
import java.util.logging.Logger;

public class EmployeeBooksActionBean 
{
    private static final Logger logger = Logger.getLogger(EmployeeBooksActionBean.class.getName());
	private final BeanClass bean;
	private final Connection connection;
	private PreparedStatement prepare;
	private int result;
	private boolean flag;
	private ResultSet resultset;
	private ResultSetMetaData metadata;
	private final List<List<Object>> data = new ArrayList<>();
	private final String insertQuery="insert into library values(?,?,?,?,?,?,?)";
	private final String displayBookQuery="select * from library where course=? and sem=?";
	private final String deleteQuery="delete from library where book=?";
	private final String viewBookQuery="select * from library where course=? order by sem";
	private final String getSubCode="select distinct sub_code,subject from subject order by sub_code"; 
	
	public EmployeeBooksActionBean(BeanClass bean)
	{
		this.bean=bean;
		connection=Dao.getConnect();
		
		if(connection == null) {
			logger.severe("Failed to establish database connection.");
		} else {
			logger.info("Database connection established successfully.");
		}
	}
	
	public boolean insertBook()
	{
				try{
				prepare = connection.prepareStatement(insertQuery);
				prepare.setString(1, bean.getSub_code());
				prepare.setString(2, bean.getSub_name());
				prepare.setString(3, bean.getBook());
				prepare.setString(4, bean.getAuthor());
				prepare.setString(5, bean.getCourse());
				prepare.setInt(6, bean.getSem());
				prepare.setString(7, bean.getPath());
				
				result = prepare.executeUpdate();
					flag = (result == 1);
				}
				catch(java.sql.SQLException e)
				{
					logger.log(java.util.logging.Level.SEVERE, "SQL Exception", e);
				}
				catch(NullPointerException e)
				{
					logger.log(java.util.logging.Level.SEVERE, "Null Pointer Exception", e);
				}
				return flag;
	}
	
	public List<List<Object>> displayBooks()
	{
		try{
				prepare= connection.prepareStatement(displayBookQuery);
				prepare.setString(1, bean.getCourse());
				prepare.setInt(2, bean.getSem());
				resultset = prepare.executeQuery();
				metadata = resultset.getMetaData();
				int cols = metadata.getColumnCount();
				logger.info(String.format("cols %d", cols));
					data.clear();
					while(resultset.next())
					{
						List<Object> row = new ArrayList<>();
						for(int i=1;i<=cols;i++)
						{
							row.add(resultset.getObject(i));
						}
						data.add(row);
						logger.info("row added ");
					}
				}
				catch (java.sql.SQLException | NullPointerException e) {
					logger.severe(e.getMessage());
				}
		return data;
	}
	
	public List<List<Object>> viewBooks()
	{
		try{
				prepare= connection.prepareStatement(viewBookQuery);
				prepare.setString(1, bean.getCourse());
				resultset = prepare.executeQuery();
				metadata = resultset.getMetaData();
				int cols = metadata.getColumnCount();
				logger.info(String.format("cols %d", cols));
					data.clear();
					while(resultset.next())
					{
						List<Object> row = new ArrayList<>();
						for(int i=1;i<=cols;i++)
						{
							row.add(resultset.getObject(i));
						}
						data.add(row);
						logger.info("row added ");
					}
				}
				catch (java.sql.SQLException | NullPointerException e) {
					logger.severe(e.getMessage());
				}
		return data;
	}

	public boolean deleteBooks()
	{
		try{
			prepare = connection.prepareStatement(deleteQuery);
			prepare.setString(1, bean.getBook());
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
		catch (java.sql.SQLException | NullPointerException e) {
			logger.severe(e.getMessage());
		}
		return flag;
	}

	public ResultSet getSub_Code()
	{
		try
		{
			prepare= connection.prepareStatement(displayBookQuery);
			prepare.setString(1, bean.getCourse());
			prepare.setInt(2, bean.getSem());
			resultset = prepare.executeQuery();
		}
		catch (java.sql.SQLException | NullPointerException e) {
			logger.severe(e.getMessage());
		}
			
		return resultset;
	}

	public ResultSet getSubCodefromSubject()
	{
		try{
		prepare=connection.prepareStatement(getSubCode);
		resultset=prepare.executeQuery();
		}
		catch (java.sql.SQLException | NullPointerException e) {
			logger.severe(e.getMessage());
		}
		return resultset;
	}
}
