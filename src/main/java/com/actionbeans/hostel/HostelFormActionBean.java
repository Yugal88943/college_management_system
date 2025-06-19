package com.actionbeans.hostel;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.util.List;
import java.util.ArrayList;
import com.beans.BeanClass;
import com.database.Dao;

public class HostelFormActionBean 
{
	private static final java.util.logging.Logger logger = java.util.logging.Logger.getLogger(HostelFormActionBean.class.getName());
	private final BeanClass bean;
	private final Connection connection;
	private PreparedStatement prepare;
	private int result;
	private boolean flag;
	private ResultSet resultset;
	private ResultSetMetaData metadata;
	private final List<List<Object>> data = new ArrayList<>();
	private final String insertQuery="insert into student_hostel_details values(?,?,?,?,?,?,?,?,?,?,?,?)";
	private final String selectQuery="select * from student_hostel_details";
	private final String deleteQuery = "delete from student_hostel_details where rollno=?";
	
	public HostelFormActionBean(BeanClass bean)
	{
		this.bean= bean;
		connection=Dao.getConnect();
	}
	
	public boolean createStudent()
	{
		try
		{
			prepare = connection.prepareStatement(insertQuery);
			prepare.setString(1, bean.getWname());
			prepare.setInt(2, bean.getTroom());
			prepare.setString(3, bean.getSname());
			prepare.setString(4, bean.getCourse());
			prepare.setInt(5, bean.getRollno());
			prepare.setInt(6, bean.getRoomno());
			prepare.setString(7, bean.getFloor());
			prepare.setString(8, bean.getPhno());
			prepare.setString(9, bean.getMailid());
			prepare.setString(10, bean.getGender());
			prepare.setString(11, bean.getAddress());
			prepare.setFloat(12, bean.getFees());
			
			result = prepare.executeUpdate();
			flag = (result == 1);
		}
		
		catch (java.sql.SQLException | NullPointerException e) {
			logger.severe(e.getMessage());
		}
		return flag;
	}
	
	public List<List<Object>> listStudent()
	{
		try{
			data.clear();
			prepare = connection.prepareStatement(selectQuery);
			resultset = prepare.executeQuery();
			metadata = resultset.getMetaData();
			int cols = metadata.getColumnCount();
			logger.log(java.util.logging.Level.INFO, "cols {0}", cols);
			while(resultset.next())
			{
				List<Object> row = new ArrayList<>();
				for(int i=1;i<=cols;i++)
				{
					row.add(resultset.getObject(i));
				}
				data.add(row);
				logger.info("row added");
			}
		}
		catch (java.sql.SQLException | NullPointerException e) {
			logger.severe(e.getMessage());
		}
		return data;
	}
	
	public ResultSet getRollno()
	{
		try{
			prepare=connection.prepareStatement(selectQuery);
			resultset = prepare.executeQuery();
		}
		catch (java.sql.SQLException | NullPointerException e) {
			logger.severe(e.getMessage());
		}
		return resultset;				
	}
	
	public boolean deleteStudent()
	{
		try{
		prepare = connection.prepareStatement(deleteQuery);
		prepare.setInt(1, bean.getRollno());

		result = prepare.executeUpdate();
		if(result>0)
		{
			logger.log(java.util.logging.Level.INFO, "Student deleted successfully.");
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
}
