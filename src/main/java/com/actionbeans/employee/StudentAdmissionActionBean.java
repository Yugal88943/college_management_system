package com.actionbeans.employee;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import com.actionbeans.login.PasswordGenerationActionBean;
import com.beans.BeanClass;
import com.database.Dao;

public class StudentAdmissionActionBean
{
	private static final java.util.logging.Logger logger = java.util.logging.Logger.getLogger(StudentAdmissionActionBean.class.getName());

	private final BeanClass student;
	private final Connection connection;
	private PreparedStatement prepare;
	private int result;
	private boolean flag;
	private ResultSet resultset;
	private final String password;
	private final String setQuery="select max(reg_no) from student_admission";
	private final String insertQuery="insert into student_admission values(?,?,?,?,?,?,?,?,?,?,?)";
	private final String insertQuery1="insert into student_profile values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
	private final String showPswrdQuery="select * from student_admission where reg_no =?";
	
	public StudentAdmissionActionBean(BeanClass student)
	{
		this.student  = student;
		connection = Dao.getConnect();
		password= PasswordGenerationActionBean.getPassword();
		
	}
	
	public boolean insert()
	{
			try{
				prepare= connection.prepareStatement(setQuery);
				resultset = prepare.executeQuery();
				if(resultset.next())
				{
					Long reg_no= resultset.getLong(1);
					reg_no=reg_no+1;
					student.setReg_no(reg_no);
					flag= true;
				}
				else{
					flag=false;
				}
				
				prepare  = connection.prepareStatement(insertQuery);
				prepare.setLong(1, student.getReg_no());
				prepare.setString(2,student.getFname());
				prepare.setString(3,student.getLname() );
				prepare.setString(4,student.getGender());
				prepare.setInt(5,student.getBatch());
				prepare.setString(6,student.getCourse());
				prepare.setString(7,student.getQualification());
				prepare.setFloat(8, student.getMarks());
				prepare.setString(9,student.getContact());
				prepare.setString(10, student.getMailid());
				prepare.setString(11,password);
				result = prepare.executeUpdate();
				prepare  = connection.prepareStatement(insertQuery1);
				prepare.setLong(1, student.getReg_no());
				prepare.setString(2,student.getFname());
				prepare.setString(3,student.getLname() );
				prepare.setString(4,student.getGender());
				prepare.setInt(5,student.getBatch());
				prepare.setString(6,student.getCourse());
				prepare.setString(7,student.getQualification());
				prepare.setFloat(8, student.getMarks());
				prepare.setString(9,student.getContact());
				prepare.setString(10, student.getMailid());
				prepare.setString(11,password);
				prepare.setString(12,null);
				prepare.setString(13,null);
				prepare.setString(14,null);
				prepare.setString(15,null);
				prepare.setString(16,null);
				
				
				result = prepare.executeUpdate();
				if(result==1)
				{
					flag = true;
					
						prepare = connection.prepareStatement(showPswrdQuery);
						prepare.setLong(1, student.getReg_no());
						
						resultset = prepare.executeQuery();
						while(resultset.next())
							{
								logger.info(String.format("reg_no: %d", resultset.getLong(1)));
								logger.info(String.format("password: %s", resultset.getString(11)));
								student.setReg_no(resultset.getLong(1));
								student.setPassword(resultset.getString(11));
							}
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
	