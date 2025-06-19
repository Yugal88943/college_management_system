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

public class EmployeeQuestionsActionBean 
{
	private static final Logger logger = Logger.getLogger(EmployeeQuestionsActionBean.class.getName());
	private final BeanClass bean;
	private final Connection connection;
	private PreparedStatement prepare;
	private ResultSet resultset;
	private boolean flag;
	private ResultSetMetaData metadata;
	private final List<List<Object>> data = new ArrayList<>();
	private final String insetQuesQuery= "insert into exam_ques values(?,?,?,?,?,?,?)";
	private final String deleteQuesQuery="delete from exam_ques where exam_ques=?";
	private final String listQuesQuery="select * from exam_ques where sub_code=?";
	private final String getSubCode="select distinct subject, sub_code from subject";
	private final String viewResultQuery="select * from student_result where course=? and batch=? order by reg_no";
	public EmployeeQuestionsActionBean(BeanClass bean)
	{
		this.bean=bean;
		connection=Dao.getConnect();
		if(connection == null){
			logger.severe("Database connection is null.");
		}
	}
	
	public boolean insertQuestion()
	{
		try
		{
			prepare = connection.prepareStatement(insetQuesQuery);
			prepare.setString(1, bean.getSub_code());
			prepare.setString(2, bean.getExam_ques());
			prepare.setString(3, bean.getAns1());
			prepare.setString(4, bean.getAns2());
			prepare.setString(5, bean.getAns3());
			prepare.setString(6, bean.getAns4());
			prepare.setString(7, bean.getRight_ans());
			
			int result = prepare.executeUpdate();
			
			if(result==1)
			{
				flag=true;
				logger.info("Insert question successful");
			}
			else
			{
				flag=false;
				logger.warning("Insert question faild");
			}
		}
		catch (java.sql.SQLException | NullPointerException exception)
		{
			logger.severe(exception.getMessage());

		}
		return flag;
	}	

	public List<List<Object>> listQues()
	{
		try
		{
			prepare=connection.prepareStatement(listQuesQuery);
			prepare.setString(1, bean.getSub_code());
			
			resultset=prepare.executeQuery();
			metadata = resultset.getMetaData();
			int cols = metadata.getColumnCount();
			if (logger.isLoggable(java.util.logging.Level.INFO)) {
				logger.info(String.format("cols %d", cols));
			}
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
		catch (java.sql.SQLException | NullPointerException exception)
		{
			logger.severe(exception.getMessage());
		}
		
		return data;
	}

	public ResultSet getQues()
	{
		try
		{
			prepare=connection.prepareStatement(listQuesQuery);
			prepare.setString(1, bean.getSub_code());
			
			resultset=prepare.executeQuery();
			
		}
		catch(java.sql.SQLException | NullPointerException exception)
		{
			logger.severe(exception.getMessage());

		}
		return resultset;
	}

	public boolean deleteQuestions()
	{
		try
		{
			prepare=connection.prepareStatement(deleteQuesQuery);
			prepare.setString(1, bean.getExam_ques());
			
			int res=prepare.executeUpdate();
			flag = res >= 1;
		}	
		catch(java.sql.SQLException | NullPointerException exception)
		{
			logger.severe(exception.getMessage());
		}
		return flag;
	}
	
	public ResultSet getSubCode()
	{
		try{
		prepare=connection.prepareStatement(getSubCode);
		
		resultset=prepare.executeQuery();
		}
		catch (java.sql.SQLException | NullPointerException exception)
		{
			logger.severe(exception.getMessage());
		}	
		return resultset;
	}

	public ResultSet viewResults()
	{
		try {
			prepare=connection.prepareStatement(viewResultQuery);
			prepare.setString(1, bean.getCourse());
			prepare.setInt(2, bean.getBatch());
			resultset=prepare.executeQuery();
		} 
		catch (java.sql.SQLException | NullPointerException e) {
			logger.severe(e.getMessage());
		}
		return resultset;
	}
}



