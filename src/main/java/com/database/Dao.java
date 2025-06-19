package com.database;

import io.github.cdimascio.dotenv.Dotenv;
import java.sql.Connection;
import java.sql.DriverManager;

public class Dao {
    private static final Dotenv dotenv = Dotenv.load();

    private static final String driverClass = "com.mysql.cj.jdbc.Driver";
    private static final String url = dotenv.get("DB_URL", "jdbc:mysql://localhost:3307/college_management?useSSL=false&serverTimezone=UTC");
    private static final String username = dotenv.get("DB_USER", "root");
    private static final String password = dotenv.get("DB_PASSWORD", "root");

    private static Connection connection;

    public static Connection getConnect() {
        try {
            Class.forName(driverClass);
            connection = DriverManager.getConnection(url, username, password);
            System.out.println("✅ Connection established");
        } catch (Exception e) {
            System.err.println("❌ Connection failed: " + e.getMessage());
            e.printStackTrace();
        }
        return connection;
    }
}
