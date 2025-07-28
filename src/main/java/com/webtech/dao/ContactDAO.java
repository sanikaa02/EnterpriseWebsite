package com.webtech.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class ContactDAO {
    private String jdbcURL = "jdbc:mysql://localhost:3306/portfolio";
    private String jdbcUsername = "root";
    private String jdbcPassword = "12345678";

    public boolean saveContactDetails(String name, String email, String phone, String service, String message) {
        String query = "INSERT INTO contacts (name, email, phone, service, message) VALUES (?, ?, ?, ?, ?)";
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
            
            if(conn != null ) {
            	System.out.println("connection found");
            }
            
            PreparedStatement stmt = conn.prepareStatement(query);
            stmt.setString(1, name);
            stmt.setString(2, email);
            stmt.setString(3, phone);
            stmt.setString(4, service);
            stmt.setString(5, message);
            
            int result = stmt.executeUpdate();
            conn.close();
            return result > 0;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
}
