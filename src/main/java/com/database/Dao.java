package com.database;

import java.sql.Connection;
import java.sql.DriverManager;

public class Dao {
	
	private static String driverclass  =  "com.mysql.cj.jdbc.Driver"; // ✅ Updated
	private static String url          =  "jdbc:mysql://localhost:3307/college_management?useSSL=false&serverTimezone=UTC"; // ✅ Updated
	private static String username     =  "root";
	private static String password     =  "root";
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
