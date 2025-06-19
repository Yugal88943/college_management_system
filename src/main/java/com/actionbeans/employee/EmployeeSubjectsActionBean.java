package com.actionbeans.employee;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.util.List;
import java.util.ArrayList;
import java.util.logging.Logger;
import com.beans.BeanClass;
import com.database.Dao;

public class EmployeeSubjectsActionBean 
{
	private static final Logger logger = Logger.getLogger(EmployeeSubjectsActionBean.class.getName());
	private final BeanClass bean;
	private final Connection connection;
	private PreparedStatement prepare;
	private int result;
	private boolean flag;
	private ResultSet resultset;
	private ResultSetMetaData metadata;
	private final List<List<Object>> data = new ArrayList<>();
	private final String insertQuery="insert into subject values(?,?,?,?,?,?,?)";
	private final String displaySubQuery="select * from subject where course=? and sem=?";
	private final String deleteQuery="delete from subject where paper_id=?";
	private final String viewSubQuery="select * from subject where course=? order by sem";
	
	public EmployeeSubjectsActionBean(BeanClass bean)
	{
		this.bean=bean;
		connection=Dao.getConnect();
	}
	
	public boolean insertSubject()
	{
			try{
				prepare  = connection.prepareStatement(insertQuery);
				prepare.setString(1, bean.getSub_name());
				prepare.setString(2,bean.getSub_code());
				prepare.setString(3,bean.getPaper_id());
				prepare.setString(4,bean.getCourse());
				prepare.setInt(5,bean.getSem());
				prepare.setInt(6,bean.getMax_mrks());
				prepare.setInt(7,bean.getMin_mrks());
				
				result = prepare.executeUpdate();
				flag = (result == 1);
			}
			catch (java.sql.SQLException | NullPointerException e) {
				logger.severe(e.getMessage());
			}
		return flag;
	}
	
	public List<List<Object>> displaySubjects()
	{
		try{
		
				prepare= connection.prepareStatement(displaySubQuery);
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

	public boolean deleteSubjects()
	{
		try{
			
			prepare = connection.prepareStatement(deleteQuery);
			
			prepare.setString(1, bean.getPaper_id());
			
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
			prepare= connection.prepareStatement(displaySubQuery);
			prepare.setString(1, bean.getCourse());
			prepare.setInt(2, bean.getSem());
	
			resultset = prepare.executeQuery();
			
		}
		catch (java.sql.SQLException | NullPointerException e) {
			logger.severe(e.getMessage());
		}
			
		return resultset;
	}
	
	
	public List<List<Object>> viewSubjects()
	{
		try{
		
				prepare= connection.prepareStatement(viewSubQuery);
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
}
