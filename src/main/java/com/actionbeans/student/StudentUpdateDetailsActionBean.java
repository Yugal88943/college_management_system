package com.actionbeans.student;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.beans.BeanClass;
import com.database.Dao;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class StudentUpdateDetailsActionBean {

    private static final Logger logger = LoggerFactory.getLogger(StudentUpdateDetailsActionBean.class);

    private BeanClass bean = new BeanClass();
    private Connection connection = null;
    private PreparedStatement prepare = null;
    private ResultSet resultset = null;
    private boolean flag;
    private Integer result;

    private final String getInfoQuery = "select * from student_profile where reg_no=?";
    private final String insertQuery = "update student_profile set father_name=?, address=?, dob=?, question =?, answer =? where reg_no=? and firstname=?";
    private final String searchQuery = "select * from student_profile where reg_no=?";
    private final String updateQuery = "update student_profile set father_name=?,address=?, dob=?, question=?,answer=? where reg_no=? and firstname=?";

    public StudentUpdateDetailsActionBean(BeanClass bean) {
        this.bean = bean;
        this.connection = Dao.getConnect();
    }

    public boolean getInfo() {
        try {
            prepare = connection.prepareStatement(getInfoQuery);
            prepare.setLong(1, bean.getReg_no());
            resultset = prepare.executeQuery();

            logger.info("Executing getInfo()");
            while (resultset.next()) {
                boolean isEmpty = resultset.getString(12).length() == 1 &&
                                  resultset.getString(13).length() == 1 &&
                                  resultset.getString(14).length() == 1 &&
                                  resultset.getString(16).length() == 1;

                if (isEmpty) {
                    logger.info("All fields are minimal length; setting flag true.");
                    flag = true;
                } else {
                    logger.info("Fields have more content; setting flag false.");
                    flag = false;
                }
            }
        } catch (Exception exception) {
            logger.error("Error in getInfo()", exception);
        }
        return flag;
    }

    public boolean profile() {
        try {
            prepare = connection.prepareStatement(insertQuery);

            prepare.setString(1, bean.getFather_name());
            prepare.setString(2, bean.getAddress());
            prepare.setString(3, bean.getDob());
            prepare.setString(4, bean.getQuestion());
            prepare.setString(5, bean.getAnswer());
            prepare.setLong(6, bean.getReg_no());
            prepare.setString(7, bean.getFname());

            result = prepare.executeUpdate();
            logger.info("Profile update result: {}", result);

            flag = result > 0;
        } catch (Exception e) {
            logger.error("Error in profile()", e);
        }
        return flag;
    }

    public BeanClass ViewRecord() {
        long id = bean.getReg_no();
        logger.info("Fetching record for reg_no: {}", id);
        try {
            prepare = connection.prepareStatement(searchQuery);
            prepare.setLong(1, id);
            resultset = prepare.executeQuery();

            while (resultset.next()) {
                if (resultset.getLong(1) == id) {
                    logger.info("Record found for ID: {}", id);

                    bean.setReg_no(resultset.getLong(1));
                    bean.setFirstname(resultset.getString(2));
                    bean.setLastname(resultset.getString(3));
                    bean.setGender(resultset.getString(4));
                    bean.setBatch(resultset.getInt(5));
                    bean.setCourse(resultset.getString(6));
                    bean.setQualification(resultset.getString(7));
                    bean.setMarks(Float.parseFloat(resultset.getString(8)));
                    bean.setContact(resultset.getString(9));
                    bean.setMailid(resultset.getString(10));
                    bean.setFather_name(resultset.getString(12));
                    bean.setAddress(resultset.getString(13));
                    bean.setDob(resultset.getString(14));
                    bean.setQuestion(resultset.getString(15));
                    bean.setAnswer(resultset.getString(16));
                } else {
                    logger.warn("Record not found for ID: {}", id);
                }
            }
        } catch (Exception e) {
            logger.error("Error in ViewRecord()", e);
        }
        return bean;
    }

    public boolean updateRecord() {
        try {
            prepare = connection.prepareStatement(updateQuery);
            prepare.setString(1, bean.getFather_name());
            prepare.setString(2, bean.getAddress());
            prepare.setString(3, bean.getDob());
            prepare.setString(4, bean.getQuestion());
            prepare.setString(5, bean.getAnswer());
            prepare.setLong(6, bean.getReg_no());
            prepare.setString(7, bean.getFirstname());

            result = prepare.executeUpdate();

            if (result == 1) {
                logger.info("Record updated successfully.");
                flag = true;
            } else {
                logger.warn("Record update failed.");
                flag = false;
            }
        } catch (Exception e) {
            logger.error("Error in updateRecord()", e);
        }
        return flag;
    }
}
