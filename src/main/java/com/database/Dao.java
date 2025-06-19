package com.database;


import java.sql.Connection;
import java.sql.DriverManager;

public class Dao {

    private static String driverclass  =  "com.mysql.cj.jdbc.Driver";
    private static String url          =  System.getenv("DB_URL");
    private static String username     =  System.getenv("DB_USER");
    private static String password     =  System.getenv("DB_PASS");
    private static Connection connection;

    public static Connection getConnect() {
        try {
            Class.forName(driverclass);
            connection = DriverManager.getConnection(url, username, password);
            System.out.println("✅ Connection created..");
        } catch (Exception e) {
            e.printStackTrace();
        }
        return connection;
    }
}
