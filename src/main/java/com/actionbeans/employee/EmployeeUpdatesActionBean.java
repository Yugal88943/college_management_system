package com.actionbeans.employee;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.util.List;
import java.util.ArrayList;
import com.beans.BeanClass;
import com.database.Dao;

public class EmployeeUpdatesActionBean 
{
	private static final java.util.logging.Logger logger = java.util.logging.Logger.getLogger(EmployeeUpdatesActionBean.class.getName());
	private final BeanClass bean;
	private final Connection connection;
	private PreparedStatement prepare;
	private int result;
	private boolean flag;
	private ResultSet resultset;
	private ResultSetMetaData metadata;
	private final List<List<Object>> data = new ArrayList<>();
	private final String insertQuery="insert into updates values(?,?)";
	private final String selectQuery="select * from updates";
	private final String deleteQuery="delete from updates where news=?";
	
	public EmployeeUpdatesActionBean(BeanClass bean)
	{
		this.bean=bean;
		connection = Dao.getConnect();
	}
	
	public boolean insertUpdates()
	{
			try
			{
				prepare  = connection.prepareStatement(insertQuery);
				prepare.setString(1,bean.getEvent_date());
				prepare.setString(2,bean.getNews());
				
				result = prepare.executeUpdate();

				flag = (result == 1);
			}
			catch (java.sql.SQLException | NullPointerException e) {
				logger.severe(e.getMessage());
			}
		return flag;
	}
	
	public List<List<Object>> listNews()
	{
		try
		{
			data.clear();
			prepare = connection.prepareStatement(selectQuery);
			resultset = prepare.executeQuery();

			metadata = resultset.getMetaData();
			int cols = metadata.getColumnCount();
			
			while(resultset.next()) {
				List<Object> row = new ArrayList<>();
				for (int i = 1; i <= cols; i++) {
					row.add(resultset.getObject(i));
				}
				data.add(row);
			}
		}
		catch (java.sql.SQLException | NullPointerException e) {
			logger.severe(e.getMessage());
		}
		return data;
}

	public ResultSet getEvent()
	{
		try
		{
			prepare=connection.prepareStatement(selectQuery);
			resultset = prepare.executeQuery();
		}
		catch (java.sql.SQLException | NullPointerException e)
		{
			logger.severe(e.getMessage());
		}
		return resultset;
	}
	
	public boolean deleteUpdates()
	{
		try
		{
			prepare=connection.prepareStatement(deleteQuery);
			prepare.setString(1, bean.getNews());
			
			result = prepare.executeUpdate();

			flag = (result >= 1);
		}
		catch (java.sql.SQLException | NullPointerException e) {
			logger.severe(e.getMessage());
		}
		return flag;
	}
}
