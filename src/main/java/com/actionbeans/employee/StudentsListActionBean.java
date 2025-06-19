package com.actionbeans.employee;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import com.beans.BeanClass;
import com.database.Dao;

public class StudentsListActionBean
{
	private static final java.util.logging.Logger logger = java.util.logging.Logger.getLogger(StudentsListActionBean.class.getName());
	private final BeanClass bean;
	private final Connection connection;
	private PreparedStatement prepare;
	private ResultSet resultset;
	private ResultSetMetaData metadata;
	private boolean flag;
	private final List<List<Object>> data = new ArrayList<>();
	private final String selectQueryByCourse="select * from student_profile where course=? order by batch";
	private final String selectQueryByBatch="select * from student_profile where batch=? order by course";
	private final String deleteStudentQuery="delete from student_profile where reg_no=? ";
	private final String selectQuery="select * from student_profile where batch=? && course=?";
	
	public StudentsListActionBean(BeanClass bean)
	{
		this.bean=bean;
		connection = Dao.getConnect();
	}
	
	public List<List<Object>> listStudentsByCourse()
	{
		try 
		{
			data.clear();
			prepare=connection.prepareStatement(selectQueryByCourse);
			prepare.setString(1, bean.getCourse());
			
			resultset = prepare.executeQuery();
			metadata = resultset.getMetaData();
			int cols = metadata.getColumnCount();
			logger.log(java.util.logging.Level.INFO, "cols {0}", cols);
			logger.log(java.util.logging.Level.INFO, "cols {0}", cols);
			while(resultset.next())
			{
				List<Object> row  = new ArrayList<>();
				for(int i=1;i<=cols;i++)
				{			
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
	
	public List<List<Object>> listStudentsByBatch()
	{
		try
		{
			data.clear();
			prepare=connection.prepareStatement(selectQueryByBatch);
			prepare.setInt(1, bean.getBatch());
			logger.log(java.util.logging.Level.INFO, "batch {0}", bean.getBatch());
			logger.log(java.util.logging.Level.INFO, "batch {0}", bean.getBatch());
			resultset = prepare.executeQuery();
			metadata = resultset.getMetaData();
			int cols = metadata.getColumnCount();
			logger.log(java.util.logging.Level.INFO, "cols {0}", cols);
			while(resultset.next())
			{
				List<Object> row  = new ArrayList<>();
				for(int i=1;i<=cols;i++)
				{			
					row.add(resultset.getObject(i));
				}
				logger.info("row added");
				data.add(row);
			}
		} 
		catch (java.sql.SQLException | NullPointerException e) {
			logger.severe(e.getMessage());
		}
		
		return data;
		
	}
	
	public ResultSet getRegNoByBatch_Course()
	{
		try{
			prepare= connection.prepareStatement(selectQuery);
			prepare.setInt( 1, bean.getBatch());
			prepare.setString(2, bean.getCourse());
			resultset=prepare.executeQuery();
			
			}
			catch (java.sql.SQLException | NullPointerException e) {
				logger.severe(e.getMessage());
			}
			return resultset;
		}
		
	public List<List<Object>> listStudents()
	{
		try 		
		{
			data.clear();
			logger.log(java.util.logging.Level.INFO, "batch {0}", bean.getBatch());
			prepare=connection.prepareStatement(selectQuery);
			prepare.setInt(1, bean.getBatch());
			prepare.setString(2,bean.getCourse());
			logger.log(java.util.logging.Level.INFO, "batch {0}", bean.getBatch());
			resultset = prepare.executeQuery();
			metadata = resultset.getMetaData();
			int cols = metadata.getColumnCount();
			logger.log(java.util.logging.Level.INFO, "cols {0}", cols);
			while(resultset.next())
			{
				List<Object> row  = new ArrayList<>();
				for(int i=1;i<=cols;i++)
				{			
					row.add(resultset.getObject(i));
				}
				logger.info("row added");
				data.add(row);
			}
		} 
		catch (java.sql.SQLException | NullPointerException e) {
			logger.severe(e.getMessage());
		}
		return data;
	}
	
	public boolean deleteStudents()
	{
		try{
			prepare = connection.prepareStatement(deleteStudentQuery);
			prepare.setLong(1, bean.getReg_no());
			
			int result=prepare.executeUpdate();
			flag = result >= 1;
		}
		catch (java.sql.SQLException | NullPointerException e) {
			logger.severe(e.getMessage());
		}
		return flag;
	}
}
