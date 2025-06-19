package com.actionbeans.student;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.util.List;
import java.util.ArrayList;

import com.beans.BeanClass;
import com.database.Dao;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class StudentShowSubjectsActionBean {

    private static final Logger logger = LoggerFactory.getLogger(StudentShowSubjectsActionBean.class);

    private BeanClass bean;
    private Connection connection;
    private PreparedStatement prepare;
    private ResultSet resultset;
    private ResultSetMetaData metadata;

    private List<List<Object>> data;

    private final String getCourseQuery = "select * from student_admission where reg_no=?";
    private final String showSubjectQuery = "select * from subject where course=? order by sem asc";

    public StudentShowSubjectsActionBean(BeanClass bean) {
        this.bean = bean;
        this.connection = Dao.getConnect();
        this.data = new ArrayList<>();
    }

    public List<List<Object>> ShowSubjects() {
        try {
            prepare = connection.prepareStatement(getCourseQuery);
            prepare.setLong(1, bean.getReg_no());
            resultset = prepare.executeQuery();

            while (resultset.next()) {
                if (resultset.getLong(1) == bean.getReg_no()) {
                    String course = resultset.getString(6);
                    logger.info("course is {}", course);

                    if (resultset != null) resultset.close();
                    if (prepare != null) prepare.close();

                    prepare = connection.prepareStatement(showSubjectQuery);
                    prepare.setString(1, course);
                    resultset = prepare.executeQuery();

                    metadata = resultset.getMetaData();
                    int cols = metadata.getColumnCount();

                    while (resultset.next()) {
                        logger.info("while loop of sub");
                        List<Object> row = new ArrayList<>();
                        for (int i = 1; i <= cols; i++) {
                            row.add(resultset.getObject(i));
                        }
                        data.add(row);
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (resultset != null) resultset.close();
                if (prepare != null) prepare.close();
                if (connection != null) connection.close();
            } catch (Exception ex) {
                ex.printStackTrace();
            }
        }
        return data;
    }
}
